.class public Lcom/akop/bach/parser/PsnEuParser;
.super Lcom/akop/bach/parser/PsnParser;
.source "PsnEuParser.java"


# static fields
.field private static final LARGE_AVATAR_ICON_PREFIX:Ljava/lang/String; = "http://static-resource.np.community.playstation.net"

.field private static final LARGE_TROPHY_ICON_PREFIX:Ljava/lang/String; = "http://trophy01.np.community.playstation.net"

.field private static final PATTERN_AVATAR_URL:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARED_FRIEND_ID:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARED_GAMES:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARED_TROPHIES:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARED_TROPHY_COLUMN:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARED_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARED_TROPHY_ICON:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARED_TROPHY_IS_LOCKED:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARED_TROPHY_TITLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_AVATAR_URL:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_GAME_ICON:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_GAME_PLAYER:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_GAME_PROGRESS:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_GAME_TITLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_GAME_TROPHIES:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_USERNAME:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIENDS:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIENDS_PENDING:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_AVATAR:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_COMMENT:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_IS_PLUS:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_LEVEL:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_ONLINE_ID:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_PLAYING:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_STATUS:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_SUMMARY:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_SUMMARY_AVATAR:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_SUMMARY_IS_PLUS:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_SUMMARY_LEVEL:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_SUMMARY_ONLINE_ID:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_SUMMARY_PROGRESS:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_SUMMARY_TROPHIES:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIEND_TROPHY:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAMES:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_DETAIL_DESC:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_DETAIL_DESC_ALT:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_ITEMS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_NODE:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_STATS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_ICON:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_MORE:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_PROGRESS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_TITLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_TROPHIES:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_UID:Ljava/util/regex/Pattern;

.field private static final PATTERN_INFOBAR_ITEM:Ljava/util/regex/Pattern;

.field private static final PATTERN_IS_PLUS:Ljava/util/regex/Pattern;

.field private static final PATTERN_ONLINE_ID:Ljava/util/regex/Pattern;

.field private static final PATTERN_PROGRESS:Ljava/util/regex/Pattern;

.field private static final PATTERN_SIGN_OUT_LINK:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHIES:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_ICON:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_TITLE:Ljava/util/regex/Pattern;

.field protected static final URL_BLOG:Ljava/lang/String; = "http://feeds.feedburner.com/SCEEBlog?format=xml"

.field private static final URL_COMPARE_GAMES_f:Ljava/lang/String; = "http://uk.playstation.com/psn/mypsn/ajax/trophies-compare/friend/add/?onlineid=%s&endIndex=999&sortBy=recent"

.field private static final URL_COMPARE_TROPHIES_f:Ljava/lang/String; = "http://uk.playstation.com/psn/mypsn/trophies/detail/?title=%s"

.field private static final URL_FRIENDS:Ljava/lang/String; = "http://uk.playstation.com/psn/mypsn/friends/"

.field private static final URL_FRIENDS_AJAX:Ljava/lang/String; = "http://uk.playstation.com/ajax/mypsn/friend/presence/"

.field private static final URL_FRIEND_SUMMARY_f:Ljava/lang/String; = "http://uk.playstation.com/psn/mypsn/trophies-compare/?friend=%1$s"

.field private static final URL_GAMES:Ljava/lang/String; = "http://uk.playstation.com/psn/mypsn/ajax/trophies/?startIndex=%1$d&sortBy=recent"

.field private static final URL_GAME_CATALOG:Ljava/lang/String; = "http://uk.playstation.com/ajax/games-hub/"

.field private static final URL_PROFILE_SUMMARY:Ljava/lang/String; = "https://secure.eu.playstation.com/psn/mypsn/"

.field private static final URL_RETURN_LOGIN:Ljava/lang/String; = "https://secure.eu.playstation.com/sign-in/confirmation/"

.field private static final URL_TROPHIES_f:Ljava/lang/String; = "http://uk.playstation.com/psn/mypsn/trophies/detail/?title=%1$s"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 100
    const-string v0, "data-aa-evt-name=\"sign out\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_SIGN_OUT_LINK:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "<div class=\"user-info\">\\s+<h2>\\s+(\\S+)\\s+</h2>\\s+<h3>\\s+<strong>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_ONLINE_ID:Ljava/util/regex/Pattern;

    .line 106
    const-string v0, "<div class=\"wrap\">\\s+<h4>[^<]+</h4>\\s+<div class=\"[^\"]+\"(?: style=\"[^\"]+\")?>\\s*([^<\\s]+)\\s*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_INFOBAR_ITEM:Ljava/util/regex/Pattern;

    .line 109
    const-string v0, "<div class=\"level-percentage\">\\s*(\\d+)\\s*<span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_PROGRESS:Ljava/util/regex/Pattern;

    .line 111
    const-string v0, "<img alt=\"[^\"]+\" class=\"avatar\" src=\"([^\"]*)\""

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_AVATAR_URL:Ljava/util/regex/Pattern;

    .line 115
    const-string v0, "<img\\s+alt=\"[^\"]+\"\\s+class=\"psp-logo\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_IS_PLUS:Ljava/util/regex/Pattern;

    .line 118
    const-string v0, "<li class=\"tile\">(.*?)</div>\\s+</li>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAMES:Ljava/util/regex/Pattern;

    .line 121
    const-string v0, "<a class=\"tile-link [^\"]+\" href=\"[^=]*=(\\d+)\">"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_UID:Ljava/util/regex/Pattern;

    .line 123
    const-string v0, "<span>(\\d+)%</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_PROGRESS:Ljava/util/regex/Pattern;

    .line 125
    const-string v0, "<li class=\"([^\"]+)\">([^<]+)</li>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_TROPHIES:Ljava/util/regex/Pattern;

    .line 127
    const-string v0, "<h2 class=\"clearfix title\">\\s+(\\S[^\\n\\r]+)\\r?\\n\\s+</h2>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_TITLE:Ljava/util/regex/Pattern;

    .line 129
    const-string v0, "<img src=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_ICON:Ljava/util/regex/Pattern;

    .line 131
    const-string v0, "class=\"more-link\">"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_MORE:Ljava/util/regex/Pattern;

    .line 134
    const-string v0, "<tr>\\s+<td class=\"trophy-unlocked-([^\"]+)\">(.*?)</tr>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_TROPHIES:Ljava/util/regex/Pattern;

    .line 136
    const-string v0, "<h1 class=\"trophy_name ([^\"]+)\">\\s+(\\S[^\\n\\r]+)\\r?\\n\\s+</h1>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_TROPHY_TITLE:Ljava/util/regex/Pattern;

    .line 138
    const-string v0, "<h2>\\s+(\\S[^\\n\\r]+)\\r?\\n\\s+</h2>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

    .line 140
    const-string v0, "<img src=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_TROPHY_ICON:Ljava/util/regex/Pattern;

    .line 143
    const-string v0, "<psn_friend>(.*?)</psn_friend>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIENDS:Ljava/util/regex/Pattern;

    .line 145
    const-string v0, "<onlineid>([^<]*)</"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_ONLINE_ID:Ljava/util/regex/Pattern;

    .line 147
    const-string v0, "<level>(\\d+)</"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_LEVEL:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "<current_avatar>([^<]+)</"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_AVATAR:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "<(platinum|gold|silver|bronze)>(\\d+)</"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_TROPHY:Ljava/util/regex/Pattern;

    .line 153
    const-string v0, "<current_game>([^<]*)</"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_PLAYING:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "<current_presence>([^<]*)</"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_STATUS:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "<comment>([^<]*)</"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_COMMENT:Ljava/util/regex/Pattern;

    .line 159
    const-string v0, "<playstationplus>([^<]*)</"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_IS_PLUS:Ljava/util/regex/Pattern;

    .line 162
    const-string v0, "class=\"friendPresence-pending[^\"]*\"[^>]*>\\s*</td>\\s*<td[^>]*>\\s*(\\S+)\\s*<div"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIENDS_PENDING:Ljava/util/regex/Pattern;

    .line 166
    const-string v0, " id=\"trophySummaryContainer\"[^>]*>(.*?)</div>\\s*</div>\\s*</div>\\s*</div>\\s*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY:Ljava/util/regex/Pattern;

    .line 168
    const-string v0, "<strong>([^<]*)</strong>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_ONLINE_ID:Ljava/util/regex/Pattern;

    .line 170
    const-string v0, "<img src=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_AVATAR:Ljava/util/regex/Pattern;

    .line 172
    const-string v0, "<p class=\"summary level\">(\\d+)</p>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_LEVEL:Ljava/util/regex/Pattern;

    .line 174
    const-string v0, "<p class=\"percentage\">(\\d+)%</p>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_PROGRESS:Ljava/util/regex/Pattern;

    .line 176
    const-string v0, "<strong id=\"fl(Bronze|Silver|Gold|Platinum)Trophies\">(\\d+)\\s*</strong>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_TROPHIES:Ljava/util/regex/Pattern;

    .line 178
    const-string v0, "<div class=\"avatarPlayStationPlus\">"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_IS_PLUS:Ljava/util/regex/Pattern;

    .line 181
    const-string v0, "<tr id=\"([^\"]+)\" data-ajax-endcount=\"[^\"]*\">(.*?)</tr>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_GAMES:Ljava/util/regex/Pattern;

    .line 184
    const-string v0, "</span>\\s+(\\S[^\\n\\r]+)\\r?\\n\\s+</div>\\s+</a>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_TITLE:Ljava/util/regex/Pattern;

    .line 186
    const-string v0, "<div class=\"img-bkg\" style=\"background-image:url\\(\'([^\']*)\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_ICON:Ljava/util/regex/Pattern;

    .line 188
    const-string v0, "<h4 class=\"user-name\">([^<]*)<span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_USERNAME:Ljava/util/regex/Pattern;

    .line 190
    const-string v0, "<img class=\"avatar-image\" src=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_AVATAR_URL:Ljava/util/regex/Pattern;

    .line 192
    const-string v0, "<td>(.*?)</td>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_PLAYER:Ljava/util/regex/Pattern;

    .line 194
    const-string v0, "<li>(\\d+)</li>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_TROPHIES:Ljava/util/regex/Pattern;

    .line 196
    const-string v0, "<span>(\\d+)%</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_PROGRESS:Ljava/util/regex/Pattern;

    .line 199
    const-string v0, "<tr>\\s+(.*?)\\s+</tr>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHIES:Ljava/util/regex/Pattern;

    .line 201
    const-string v0, "<t[dh]( class=\"([^\"]+)\")?>\\s+(.*?)\\s+</t[dh]>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_COLUMN:Ljava/util/regex/Pattern;

    .line 204
    const-string v0, "<h4 class=\"user-name\">([^<]+)</h4>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_FRIEND_ID:Ljava/util/regex/Pattern;

    .line 206
    const-string v0, "<img src=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_ICON:Ljava/util/regex/Pattern;

    .line 208
    const-string v0, "<h1 class=\"trophy_name ([^\"]+)\">\\s+(\\S[^\\n\\r]+)\\r?\\n\\s+</h1>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_TITLE:Ljava/util/regex/Pattern;

    .line 210
    const-string v0, "<h2>\\s+(\\S[^\\n\\r]+)\\r?\\n\\s+</h2>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

    .line 212
    const-string v0, "<span class=\"locked\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_IS_LOCKED:Ljava/util/regex/Pattern;

    .line 215
    const-string v0, "<game_result content_id=\"[^\"]*\">(.*?)</game_result>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_ITEMS:Ljava/util/regex/Pattern;

    .line 217
    const-string v0, "<game_results page_current=\"(\\d+)\" page_total=\"(\\d+)\">"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_STATS:Ljava/util/regex/Pattern;

    .line 220
    const-string v0, "<([a-z_]+)[^>]*>([^<]*)</[a-z_]+>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_NODE:Ljava/util/regex/Pattern;

    .line 223
    const-string v0, "<div id=\"content\" class=\"\">(.*?)</div>\\s*</div>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_DETAIL_DESC:Ljava/util/regex/Pattern;

    .line 226
    const-string v0, "<div class=\"gameInfo\">\\s*<div class=\"info\" style=\"[^\"]+\">(.*?)</div>\\s*</div>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_DETAIL_DESC_ALT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/PsnParser;-><init>(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method private getLargeAvatarIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1513
    if-nez p1, :cond_1

    .line 1514
    const/4 p1, 0x0

    .line 1520
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1516
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, "/avatar/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1517
    .local v0, "pos":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://static-resource.np.community.playstation.net"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getLargeTrophyIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1501
    if-nez p1, :cond_1

    .line 1502
    const/4 p1, 0x0

    .line 1508
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1504
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, "/trophy/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1505
    .local v0, "pos":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 1508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://trophy01.np.community.playstation.net"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private parseGamePage(ILjava/lang/String;Ljava/util/List;)Z
    .locals 16
    .param p1, "startIndex"    # I
    .param p2, "page"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 355
    .local p3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-object v14, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAMES:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 357
    .local v5, "gameMatcher":Ljava/util/regex/Matcher;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 359
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "gameContent":Ljava/lang/String;
    const/4 v7, 0x0

    .line 364
    .local v7, "gameTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 366
    .local v4, "gameIcon":Ljava/lang/String;
    const/4 v1, 0x0

    .line 367
    .local v1, "bronze":I
    const/4 v13, 0x0

    .line 368
    .local v13, "silver":I
    const/4 v9, 0x0

    .line 369
    .local v9, "gold":I
    const/4 v12, 0x0

    .line 371
    .local v12, "platinum":I
    sget-object v14, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_TROPHIES:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .local v11, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-nez v14, :cond_1

    .line 357
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 374
    :cond_1
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 376
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 379
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 381
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 384
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 386
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 389
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 391
    sget-object v14, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_UID:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 392
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 395
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 397
    .local v8, "gameUid":Ljava/lang/String;
    sget-object v14, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_PROGRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 398
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 401
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 403
    .local v6, "gameProgress":I
    sget-object v14, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_TITLE:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 404
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 405
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    :cond_2
    sget-object v14, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_ICON:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 408
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 409
    const-string v14, "http://uk.playstation.com/psn/mypsn/ajax/trophies/?startIndex=%1$d&sortBy=recent"

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/akop/bach/parser/PsnEuParser;->getLargeTrophyIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    const/16 v14, 0xf

    invoke-direct {v2, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 413
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v14, "Title"

    invoke-virtual {v2, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v14, "Uid"

    invoke-virtual {v2, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v14, "IconUrl"

    invoke-virtual {v2, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v14, "Progress"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v14, "SortOrder"

    add-int v15, v10, p1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v14, "UnlockedPlatinum"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string v14, "UnlockedGold"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string v14, "UnlockedSilver"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v14, "UnlockedBronze"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    invoke-static {v7}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 426
    .end local v1    # "bronze":I
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "gameContent":Ljava/lang/String;
    .end local v4    # "gameIcon":Ljava/lang/String;
    .end local v6    # "gameProgress":I
    .end local v7    # "gameTitle":Ljava/lang/String;
    .end local v8    # "gameUid":Ljava/lang/String;
    .end local v9    # "gold":I
    .end local v11    # "m":Ljava/util/regex/Matcher;
    .end local v12    # "platinum":I
    .end local v13    # "silver":I
    :cond_4
    sget-object v14, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_MORE:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    return v14
.end method


# virtual methods
.method public fetchBlog()Lcom/akop/bach/util/rss/RssChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1528
    :try_start_0
    const-string v1, "http://feeds.feedburner.com/SCEEBlog?format=xml"

    invoke-static {v1}, Lcom/akop/bach/util/rss/RssHandler;->getFeed(Ljava/lang/String;)Lcom/akop/bach/util/rss/RssChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1530
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/akop/bach/parser/ParserException;

    iget-object v2, p0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    const v3, 0x7f080071

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getSessionFile(Lcom/akop/bach/BasicAccount;)Ljava/lang/String;
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".eu.session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAuthenticate(Lcom/akop/bach/BasicAccount;)Z
    .locals 11
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    .line 239
    move-object v6, p1

    check-cast v6, Lcom/akop/bach/PsnAccount;

    .line 241
    .local v6, "psnAccount":Lcom/akop/bach/PsnAccount;
    invoke-virtual {v6}, Lcom/akop/bach/PsnAccount;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "password":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 243
    new-instance v7, Lcom/akop/bach/parser/ParserException;

    iget-object v8, p0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    const v9, 0x7f080059

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 245
    :cond_0
    iget-object v8, p0, Lcom/akop/bach/parser/PsnEuParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 248
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v0, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v8, "j_username"

    invoke-virtual {v6}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string v8, "j_password"

    invoke-static {v0, v8, v5}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    const-string v8, "returnURL"

    const-string v9, "https://secure.eu.playstation.com/sign-in/confirmation/"

    invoke-static {v0, v8, v9}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const-string v8, "http.protocol.max-redirects"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 258
    const-string v8, "https://store.playstation.com/j_acegi_external_security_check?target=/external/login.action"

    invoke-virtual {p0, v8, v0}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "page":Ljava/lang/String;
    const-string v8, "http.protocol.max-redirects"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 264
    sget-object v8, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_SIGN_OUT_LINK:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 265
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_3

    .line 267
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 268
    const-string v7, "onAuthEU: Redir URL not found"

    invoke-static {v7}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 271
    :cond_1
    invoke-virtual {p0, v3}, Lcom/akop/bach/parser/PsnEuParser;->getOutageMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "outageMessage":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 272
    new-instance v7, Lcom/akop/bach/parser/ParserException;

    invoke-direct {v7, v2}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 274
    :cond_2
    const/4 v7, 0x0

    .line 277
    .end local v2    # "outageMessage":Ljava/lang/String;
    :cond_3
    return v7
.end method

.method protected parseCompareGames(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedGameInfo;
    .locals 35
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    const-string v2, "http://uk.playstation.com/psn/mypsn/ajax/trophies-compare/friend/add/?onlineid=%s&endIndex=999&sortBy=recent"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string v34, "UTF-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v32

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1081
    .local v19, "comparePage":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1083
    .local v30, "started":J
    new-instance v18, Lcom/akop/bach/PSN$ComparedGameInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/akop/bach/PSN$ComparedGameInfo;-><init>(Landroid/content/ContentResolver;)V

    .line 1084
    .local v18, "cgi":Lcom/akop/bach/PSN$ComparedGameInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    .line 1088
    const/16 v21, 0x1

    .line 1091
    .local v21, "friendIndex":I
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_USERNAME:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 1092
    .local v24, "m":Ljava/util/regex/Matcher;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v29

    .line 1095
    .local v29, "userName":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1097
    move/from16 v21, v23

    .line 1102
    .end local v29    # "userName":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_AVATAR_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 1103
    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 1104
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    .line 1103
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 1092
    .restart local v29    # "userName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 1106
    .end local v29    # "userName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1107
    const-string v2, "https://secure.eu.playstation.com/psn/mypsn/"

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/akop/bach/parser/PsnEuParser;->getLargeAvatarIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    .line 1110
    :cond_3
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_GAMES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 1111
    .local v28, "rowMatcher":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1113
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1114
    .local v3, "uid":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 1116
    .local v22, "gameContent":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1117
    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1119
    .local v5, "iconUrl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1120
    .local v7, "selfPlatinum":I
    const/4 v8, 0x0

    .line 1121
    .local v8, "selfGold":I
    const/4 v9, 0x0

    .line 1122
    .local v9, "selfSilver":I
    const/4 v10, 0x0

    .line 1123
    .local v10, "selfBronze":I
    const/4 v11, 0x0

    .line 1124
    .local v11, "selfProgress":I
    const/4 v6, 0x0

    .line 1126
    .local v6, "selfPlayed":Z
    const/4 v13, 0x0

    .line 1127
    .local v13, "oppPlatinum":I
    const/4 v14, 0x0

    .line 1128
    .local v14, "oppGold":I
    const/4 v15, 0x0

    .line 1129
    .local v15, "oppSilver":I
    const/16 v16, 0x0

    .line 1130
    .local v16, "oppBronze":I
    const/16 v17, 0x0

    .line 1131
    .local v17, "oppProgress":I
    const/4 v12, 0x0

    .line 1133
    .local v12, "oppPlayed":Z
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1134
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1136
    :cond_4
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_ICON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1137
    const-string v2, "http://uk.playstation.com/psn/mypsn/ajax/trophies-compare/friend/add/?onlineid=%s&endIndex=999&sortBy=recent"

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/akop/bach/parser/PsnEuParser;->getLargeTrophyIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1140
    :cond_5
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_PLAYER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 1141
    .local v27, "playerMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1145
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1148
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    .line 1150
    .local v26, "playerContent":Ljava/lang/String;
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_PROGRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 1151
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1153
    const/4 v6, 0x1

    .line 1154
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1156
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 1157
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1159
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1160
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1162
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1163
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1165
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1166
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1168
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1176
    .end local v26    # "playerContent":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    .line 1177
    .local v20, "found":Z
    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 1178
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    .line 1177
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1180
    :cond_7
    if-eqz v20, :cond_8

    .line 1183
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    .line 1185
    .local v25, "oppContent":Ljava/lang/String;
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_PROGRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 1186
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1188
    const/4 v12, 0x1

    .line 1189
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1191
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARE_GAME_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 1192
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1194
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1195
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1197
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1198
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1200
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1201
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1203
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1212
    .end local v20    # "found":Z
    .end local v25    # "oppContent":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->cursor:Lcom/akop/bach/PSN$ComparedGameCursor;

    invoke-virtual/range {v2 .. v17}, Lcom/akop/bach/PSN$ComparedGameCursor;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIIIZIIIII)V

    goto/16 :goto_2

    .line 1217
    .end local v3    # "uid":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "iconUrl":Ljava/lang/String;
    .end local v6    # "selfPlayed":Z
    .end local v7    # "selfPlatinum":I
    .end local v8    # "selfGold":I
    .end local v9    # "selfSilver":I
    .end local v10    # "selfBronze":I
    .end local v11    # "selfProgress":I
    .end local v12    # "oppPlayed":Z
    .end local v13    # "oppPlatinum":I
    .end local v14    # "oppGold":I
    .end local v15    # "oppSilver":I
    .end local v16    # "oppBronze":I
    .end local v17    # "oppProgress":I
    .end local v22    # "gameContent":Ljava/lang/String;
    .end local v27    # "playerMatcher":Ljava/util/regex/Matcher;
    :cond_9
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1218
    const-string v2, "parseCompareGames/processing"

    move-wide/from16 v0, v30

    invoke-static {v2, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v30

    .line 1220
    :cond_a
    return-object v18
.end method

.method protected parseCompareTrophies(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedTrophyInfo;
    .locals 28
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
    .line 1228
    const-string v2, "http://uk.playstation.com/psn/mypsn/trophies/detail/?title=%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "UTF-8"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 1230
    .local v24, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1231
    .local v18, "page":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1233
    .local v22, "started":J
    new-instance v13, Lcom/akop/bach/PSN$ComparedTrophyInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/akop/bach/PSN$ComparedTrophyInfo;-><init>(Landroid/content/ContentResolver;)V

    .line 1236
    .local v13, "cti":Lcom/akop/bach/PSN$ComparedTrophyInfo;
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 1237
    .local v20, "rowMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return-object v13

    .line 1241
    :cond_1
    const/4 v14, 0x1

    .line 1242
    .local v14, "friendColumn":I
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 1243
    .local v19, "row":Ljava/lang/String;
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_COLUMN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1245
    .local v12, "columnMatcher":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1247
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 1248
    .local v11, "column":Ljava/lang/String;
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_FRIEND_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .local v17, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1249
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1250
    move v14, v15

    .line 1245
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1254
    .end local v11    # "column":Ljava/lang/String;
    .end local v17    # "m":Ljava/util/regex/Matcher;
    :cond_3
    const/4 v15, 0x0

    :goto_2
    const/4 v2, 0x2

    if-ge v15, v2, :cond_5

    .line 1255
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1254
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1314
    .local v3, "title":Ljava/lang/String;
    .local v4, "description":Ljava/lang/String;
    .local v5, "iconUrl":Ljava/lang/String;
    .local v6, "type":I
    .local v7, "isSecret":Z
    .local v8, "isLocked":Z
    .local v9, "selfEarned":Ljava/lang/String;
    .local v10, "oppEarned":Ljava/lang/String;
    .restart local v17    # "m":Ljava/util/regex/Matcher;
    :cond_4
    iget-object v2, v13, Lcom/akop/bach/PSN$ComparedTrophyInfo;->cursor:Lcom/akop/bach/PSN$ComparedTrophyCursor;

    invoke-virtual/range {v2 .. v10}, Lcom/akop/bach/PSN$ComparedTrophyCursor;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 1258
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "iconUrl":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "isSecret":Z
    .end local v8    # "isLocked":Z
    .end local v9    # "selfEarned":Ljava/lang/String;
    .end local v10    # "oppEarned":Ljava/lang/String;
    .end local v17    # "m":Ljava/util/regex/Matcher;
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1260
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 1262
    const/4 v5, 0x0

    .line 1263
    .restart local v5    # "iconUrl":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1264
    .restart local v6    # "type":I
    const/4 v3, 0x0

    .line 1265
    .restart local v3    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1266
    .restart local v4    # "description":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1267
    .restart local v7    # "isSecret":Z
    const/4 v8, 0x1

    .line 1268
    .restart local v8    # "isLocked":Z
    const/4 v9, 0x0

    .line 1269
    .restart local v9    # "selfEarned":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1271
    .restart local v10    # "oppEarned":Ljava/lang/String;
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_ICON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .restart local v17    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1272
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/akop/bach/parser/PsnEuParser;->getLargeTrophyIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1273
    :cond_6
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1275
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1276
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    .line 1277
    .local v21, "trophyType":Ljava/lang/String;
    const-string v2, "bronze"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1278
    const/4 v6, 0x1

    .line 1289
    .end local v21    # "trophyType":Ljava/lang/String;
    :cond_7
    :goto_3
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1290
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1292
    :cond_8
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_COLUMN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1293
    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1295
    if-nez v15, :cond_f

    .line 1298
    const-string v2, "trophy-unlocked-false"

    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 1299
    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    const v25, 0x7f0800b4

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1293
    :cond_9
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1279
    .restart local v21    # "trophyType":Ljava/lang/String;
    :cond_a
    const-string v2, "silver"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1280
    const/4 v6, 0x2

    goto :goto_3

    .line 1281
    :cond_b
    const-string v2, "gold"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1282
    const/4 v6, 0x3

    goto :goto_3

    .line 1283
    :cond_c
    const-string v2, "platinum"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1284
    const/4 v6, 0x4

    goto :goto_3

    .line 1285
    :cond_d
    const-string v2, "unknown"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1286
    const/4 v6, 0x0

    goto :goto_3

    .line 1299
    .end local v21    # "trophyType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    const v25, 0x7f08014d

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 1303
    :cond_f
    if-ne v15, v14, :cond_9

    .line 1306
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 1307
    .restart local v11    # "column":Ljava/lang/String;
    sget-object v2, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_COMPARED_TROPHY_IS_LOCKED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    .line 1308
    .local v16, "isLockedForOpp":Z
    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    const v25, 0x7f0800b4

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_6
    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    const v25, 0x7f08014d

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    .line 1318
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "iconUrl":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "isSecret":Z
    .end local v8    # "isLocked":Z
    .end local v9    # "selfEarned":Ljava/lang/String;
    .end local v10    # "oppEarned":Ljava/lang/String;
    .end local v11    # "column":Ljava/lang/String;
    .end local v16    # "isLockedForOpp":Z
    .end local v17    # "m":Ljava/util/regex/Matcher;
    :cond_11
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    const-string v2, "parseCompareTrophies/processing"

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v22

    goto/16 :goto_0
.end method

.method protected parseFriendSummary(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V
    .locals 31
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendOnlineId"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    const-string v3, "http://uk.playstation.com/psn/mypsn/trophies-compare/?friend=%1$s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 889
    .local v30, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 891
    .local v12, "friendData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 892
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/parser/PsnEuParser;->FRIEND_ID_PROJECTION:[Ljava/lang/String;

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

    move-result-object v9

    .line 897
    .local v9, "c":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 898
    .local v28, "updated":J
    move-wide/from16 v26, v28

    .line 899
    .local v26, "started":J
    const-wide/16 v14, -0x1

    .line 903
    .local v14, "friendId":J
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 908
    :cond_0
    if-eqz v9, :cond_1

    .line 909
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 913
    :cond_1
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 914
    .local v13, "friendMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 916
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 918
    .local v11, "friendCard":Ljava/lang/String;
    const/16 v21, 0x0

    .line 919
    .local v21, "onlineId":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_ONLINE_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .local v19, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 920
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 922
    :cond_2
    if-eqz v21, :cond_d

    .line 924
    const/16 v23, 0x0

    .line 925
    .local v23, "progress":I
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_PROGRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 926
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 928
    :cond_3
    const/16 v18, 0x0

    .line 929
    .local v18, "level":I
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_LEVEL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 930
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 932
    :cond_4
    const/16 v17, 0x0

    .line 933
    .local v17, "iconUrl":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_AVATAR:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 934
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/akop/bach/parser/PsnEuParser;->getLargeAvatarIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 937
    :cond_5
    const/16 v20, 0x0

    .line 938
    .local v20, "memberType":I
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_IS_PLUS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 939
    const/16 v20, 0x1

    .line 941
    :cond_6
    const/4 v8, 0x0

    .line 942
    .local v8, "bronze":I
    const/16 v24, 0x0

    .line 943
    .local v24, "silver":I
    const/16 v16, 0x0

    .line 944
    .local v16, "gold":I
    const/16 v22, 0x0

    .line 946
    .local v22, "platinum":I
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_TROPHIES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 947
    :cond_7
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 949
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    .line 950
    .local v25, "type":Ljava/lang/String;
    const-string v3, "bronze"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 951
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 908
    .end local v8    # "bronze":I
    .end local v11    # "friendCard":Ljava/lang/String;
    .end local v13    # "friendMatcher":Ljava/util/regex/Matcher;
    .end local v16    # "gold":I
    .end local v17    # "iconUrl":Ljava/lang/String;
    .end local v18    # "level":I
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .end local v20    # "memberType":I
    .end local v21    # "onlineId":Ljava/lang/String;
    .end local v22    # "platinum":I
    .end local v23    # "progress":I
    .end local v24    # "silver":I
    .end local v25    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_8

    .line 909
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 952
    .restart local v8    # "bronze":I
    .restart local v11    # "friendCard":Ljava/lang/String;
    .restart local v13    # "friendMatcher":Ljava/util/regex/Matcher;
    .restart local v16    # "gold":I
    .restart local v17    # "iconUrl":Ljava/lang/String;
    .restart local v18    # "level":I
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    .restart local v20    # "memberType":I
    .restart local v21    # "onlineId":Ljava/lang/String;
    .restart local v22    # "platinum":I
    .restart local v23    # "progress":I
    .restart local v24    # "silver":I
    .restart local v25    # "type":Ljava/lang/String;
    :cond_9
    const-string v3, "silver"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 953
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    goto :goto_0

    .line 954
    :cond_a
    const-string v3, "gold"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 955
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto :goto_0

    .line 956
    :cond_b
    const-string v3, "platinum"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 957
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto :goto_0

    .line 960
    .end local v25    # "type":Ljava/lang/String;
    :cond_c
    new-instance v10, Landroid/content/ContentValues;

    const/16 v3, 0xf

    invoke-direct {v10, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 962
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v3, "LastUpdated"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 963
    const-string v3, "OnlineId"

    move-object/from16 v0, v21

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v3, "IconUrl"

    move-object/from16 v0, v17

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v3, "Level"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 966
    const-string v3, "Progress"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    const-string v3, "PlatinumTrophies"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    const-string v3, "GoldTrophies"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    const-string v3, "SilverTrophies"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string v3, "BronzeTrophies"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    const-string v3, "MemberType"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 973
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-gez v3, :cond_f

    .line 976
    const-string v3, "AccountId"

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 977
    const-string v3, "Status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    const-string v4, "Playing"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 989
    :goto_1
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 993
    .end local v8    # "bronze":I
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "friendCard":Ljava/lang/String;
    .end local v16    # "gold":I
    .end local v17    # "iconUrl":Ljava/lang/String;
    .end local v18    # "level":I
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .end local v20    # "memberType":I
    .end local v21    # "onlineId":Ljava/lang/String;
    .end local v22    # "platinum":I
    .end local v23    # "progress":I
    .end local v24    # "silver":I
    :cond_d
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 994
    const-string v3, "parseCompareGames/processing"

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v26

    .line 995
    :cond_e
    return-void

    .line 985
    .restart local v8    # "bronze":I
    .restart local v10    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "friendCard":Ljava/lang/String;
    .restart local v16    # "gold":I
    .restart local v17    # "iconUrl":Ljava/lang/String;
    .restart local v18    # "level":I
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    .restart local v20    # "memberType":I
    .restart local v21    # "onlineId":Ljava/lang/String;
    .restart local v22    # "platinum":I
    .restart local v23    # "progress":I
    .restart local v24    # "silver":I
    :cond_f
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected parseFriends(Lcom/akop/bach/PsnAccount;)V
    .locals 43
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    const-class v42, Lcom/akop/bach/parser/PsnEuParser;

    monitor-enter v42

    .line 638
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 640
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v26, Ljava/util/ArrayList;

    const/16 v3, 0x64

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    .local v26, "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v8

    .line 643
    .local v8, "accountId":J
    const/16 v33, 0x0

    .line 644
    .local v33, "rowsInserted":I
    const/16 v34, 0x0

    .line 645
    .local v34, "rowsUpdated":I
    const/16 v32, 0x0

    .line 647
    .local v32, "rowsDeleted":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 648
    .local v40, "updated":J
    move-wide/from16 v36, v40

    .line 651
    .local v36, "started":J
    const-string v3, "http://uk.playstation.com/psn/mypsn/friends/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 654
    .local v28, "page":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIENDS_PENDING:Ljava/util/regex/Pattern;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 656
    .local v17, "friendMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 658
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 659
    .local v27, "onlineId":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/parser/PsnEuParser;->FRIEND_ID_PROJECTION:[Ljava/lang/String;

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

    aput-object v27, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 664
    .local v12, "c":Landroid/database/Cursor;
    const-wide/16 v18, -0x1

    .line 668
    .local v18, "friendId":J
    if-eqz v12, :cond_0

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v18

    .line 673
    :cond_0
    if-eqz v12, :cond_1

    .line 674
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    const/16 v3, 0xf

    invoke-direct {v14, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 679
    .local v14, "cv":Landroid/content/ContentValues;
    const-string v3, "DeleteMarker"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 680
    const-string v3, "Status"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    const-wide/16 v4, 0x0

    cmp-long v3, v18, v4

    if-gez v3, :cond_3

    .line 685
    const-string v3, "OnlineId"

    move-object/from16 v0, v27

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v3, "AccountId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 687
    const-string v3, "Progress"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string v3, "IconUrl"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 689
    const-string v3, "Level"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string v3, "PlatinumTrophies"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string v3, "GoldTrophies"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string v3, "SilverTrophies"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v3, "BronzeTrophies"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string v3, "Playing"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 695
    const-string v3, "LastUpdated"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 879
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "accountId":J
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v17    # "friendMatcher":Ljava/util/regex/Matcher;
    .end local v18    # "friendId":J
    .end local v26    # "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v27    # "onlineId":Ljava/lang/String;
    .end local v28    # "page":Ljava/lang/String;
    .end local v32    # "rowsDeleted":I
    .end local v33    # "rowsInserted":I
    .end local v34    # "rowsUpdated":I
    .end local v36    # "started":J
    .end local v40    # "updated":J
    :catchall_0
    move-exception v3

    monitor-exit v42
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 673
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "accountId":J
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v17    # "friendMatcher":Ljava/util/regex/Matcher;
    .restart local v18    # "friendId":J
    .restart local v26    # "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v27    # "onlineId":Ljava/lang/String;
    .restart local v28    # "page":Ljava/lang/String;
    .restart local v32    # "rowsDeleted":I
    .restart local v33    # "rowsInserted":I
    .restart local v34    # "rowsUpdated":I
    .restart local v36    # "started":J
    .restart local v40    # "updated":J
    :catchall_1
    move-exception v3

    if-eqz v12, :cond_2

    .line 674
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 701
    .restart local v14    # "cv":Landroid/content/ContentValues;
    :cond_3
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 704
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_0

    .line 709
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v18    # "friendId":J
    .end local v27    # "onlineId":Ljava/lang/String;
    :cond_4
    const-string v3, "http://uk.playstation.com/ajax/mypsn/friend/presence/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 710
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIENDS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 712
    :cond_5
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 714
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 717
    .local v16, "friendData":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_ONLINE_ID:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .local v24, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 720
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 722
    .restart local v27    # "onlineId":Ljava/lang/String;
    const/16 v23, 0x0

    .line 723
    .local v23, "level":I
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_LEVEL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 724
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 726
    :cond_6
    const/16 v21, 0x0

    .line 727
    .local v21, "iconUrl":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_AVATAR:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 728
    const-string v3, "http://uk.playstation.com/ajax/mypsn/friend/presence/"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/akop/bach/parser/PsnEuParser;->getLargeAvatarIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 731
    :cond_7
    const/4 v13, 0x0

    .line 732
    .local v13, "comment":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_COMMENT:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 734
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 735
    if-eqz v13, :cond_8

    const-string v3, "null"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 736
    const/4 v13, 0x0

    .line 739
    :cond_8
    const/16 v25, 0x0

    .line 740
    .local v25, "memberType":I
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_IS_PLUS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 743
    const/16 v25, 0x1

    .line 746
    :cond_9
    const/4 v11, 0x0

    .line 747
    .local v11, "bronze":I
    const/16 v35, 0x0

    .line 748
    .local v35, "silver":I
    const/16 v20, 0x0

    .line 749
    .local v20, "gold":I
    const/16 v29, 0x0

    .line 751
    .local v29, "platinum":I
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_TROPHY:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 752
    :cond_a
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 754
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v39

    .line 755
    .local v39, "type":Ljava/lang/String;
    const-string v3, "bronze"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 756
    const/4 v3, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_2

    .line 757
    :cond_b
    const-string v3, "silver"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 758
    const/4 v3, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    goto :goto_2

    .line 759
    :cond_c
    const-string v3, "gold"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 760
    const/4 v3, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto :goto_2

    .line 761
    :cond_d
    const-string v3, "platinum"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 762
    const/4 v3, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    goto :goto_2

    .line 765
    .end local v39    # "type":Ljava/lang/String;
    :cond_e
    const/16 v22, 0x0

    .line 766
    .local v22, "inGame":Z
    const/16 v38, 0x0

    .line 767
    .local v38, "status":I
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_STATUS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 769
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    .line 770
    .local v31, "presence":Ljava/lang/String;
    const-string v3, "offline"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 771
    const/16 v38, 0x6

    .line 790
    .end local v31    # "presence":Ljava/lang/String;
    :cond_f
    :goto_3
    const/16 v30, 0x0

    .line 791
    .local v30, "playing":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_PLAYING:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 793
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 795
    .local v10, "activity":Ljava/lang/String;
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    .line 797
    if-eqz v22, :cond_18

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    const v4, 0x7f0800f9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 804
    .end local v10    # "activity":Ljava/lang/String;
    :cond_10
    :goto_4
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/parser/PsnEuParser;->FRIEND_ID_PROJECTION:[Ljava/lang/String;

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

    aput-object v27, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 809
    .restart local v12    # "c":Landroid/database/Cursor;
    const-wide/16 v18, -0x1

    .line 813
    .restart local v18    # "friendId":J
    if-eqz v12, :cond_11

    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 814
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v18

    .line 818
    :cond_11
    if-eqz v12, :cond_12

    .line 819
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 822
    :cond_12
    new-instance v14, Landroid/content/ContentValues;

    const/16 v3, 0xf

    invoke-direct {v14, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 824
    .restart local v14    # "cv":Landroid/content/ContentValues;
    const-string v3, "IconUrl"

    move-object/from16 v0, v21

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v3, "Level"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v3, "MemberType"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v3, "Comment"

    invoke-virtual {v14, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v3, "Level"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    const-string v3, "Status"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    const-string v3, "PlatinumTrophies"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v3, "GoldTrophies"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    const-string v3, "SilverTrophies"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    const-string v3, "BronzeTrophies"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 834
    const-string v3, "Playing"

    move-object/from16 v0, v30

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v3, "DeleteMarker"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 837
    const-wide/16 v4, 0x0

    cmp-long v3, v18, v4

    if-gez v3, :cond_1a

    .line 840
    const-string v3, "OnlineId"

    move-object/from16 v0, v27

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v3, "AccountId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    const-string v3, "Progress"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    const-string v3, "LastUpdated"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 772
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v18    # "friendId":J
    .end local v30    # "playing":Ljava/lang/String;
    .restart local v31    # "presence":Ljava/lang/String;
    :cond_13
    const-string v3, "online"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 773
    const/16 v38, 0x4

    goto/16 :goto_3

    .line 774
    :cond_14
    const-string v3, "online-ingame"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 776
    const/16 v38, 0x4

    .line 777
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 779
    :cond_15
    const-string v3, "online-away"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 780
    const/16 v38, 0x5

    goto/16 :goto_3

    .line 781
    :cond_16
    const-string v3, "online-ingame-away"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 783
    const/16 v38, 0x5

    .line 784
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 786
    :cond_17
    const-string v3, "pending"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 787
    const/16 v38, 0x3

    goto/16 :goto_3

    .line 800
    .end local v31    # "presence":Ljava/lang/String;
    .restart local v10    # "activity":Ljava/lang/String;
    .restart local v30    # "playing":Ljava/lang/String;
    :cond_18
    move-object/from16 v30, v10

    goto/16 :goto_4

    .line 818
    .end local v10    # "activity":Ljava/lang/String;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v18    # "friendId":J
    :catchall_2
    move-exception v3

    if-eqz v12, :cond_19

    .line 819
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_19
    throw v3

    .line 849
    .restart local v14    # "cv":Landroid/content/ContentValues;
    :cond_1a
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    .line 857
    .end local v11    # "bronze":I
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "comment":Ljava/lang/String;
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "friendData":Ljava/lang/String;
    .end local v18    # "friendId":J
    .end local v20    # "gold":I
    .end local v21    # "iconUrl":Ljava/lang/String;
    .end local v22    # "inGame":Z
    .end local v23    # "level":I
    .end local v24    # "m":Ljava/util/regex/Matcher;
    .end local v25    # "memberType":I
    .end local v27    # "onlineId":Ljava/lang/String;
    .end local v29    # "platinum":I
    .end local v30    # "playing":Ljava/lang/String;
    .end local v35    # "silver":I
    .end local v38    # "status":I
    :cond_1b
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

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v32

    .line 861
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1c

    .line 863
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    new-array v15, v3, [Landroid/content/ContentValues;

    .line 864
    .local v15, "cvs":[Landroid/content/ContentValues;
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 866
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v33

    .line 869
    .end local v15    # "cvs":[Landroid/content/ContentValues;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/akop/bach/PsnAccount;->setLastFriendUpdate(J)V

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/akop/bach/PsnAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 873
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 875
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Friend page processing [I:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";U:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";D:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-static {v3, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 879
    :cond_1d
    monitor-exit v42
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 880
    return-void
.end method

.method protected parseGameCatalog(IIII)Lcom/akop/bach/PSN$GameCatalogList;
    .locals 30
    .param p1, "console"    # I
    .param p2, "page"    # I
    .param p3, "releaseStatus"    # I
    .param p4, "sortOrder"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    const/16 v21, 0x0

    .line 1331
    .local v21, "rating":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1332
    .local v10, "genre":[Ljava/lang/String;
    const/16 v22, 0x0

    .line 1333
    .local v22, "releaseSpec":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1334
    .local v23, "sortOrderSpec":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1336
    .local v7, "consoleSpec":Ljava/lang/String;
    const/16 v27, 0x1

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 1337
    const-string v7, "psvita"

    .line 1345
    :goto_0
    const/16 v27, 0x1

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 1346
    const-string v23, "ALPHANUMERIC"

    .line 1350
    :goto_1
    if-nez p3, :cond_b

    .line 1351
    const-string v22, "out-now"

    .line 1355
    :goto_2
    const/16 v19, 0xc

    .line 1357
    .local v19, "pageSize":I
    new-instance v11, Ljava/util/ArrayList;

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1359
    .local v11, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v27, "sort"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-static {v11, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1360
    const-string v27, "vertical"

    move-object/from16 v0, v27

    invoke-static {v11, v0, v7}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1361
    const-string v27, "gameFilter.tab"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v11, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1362
    const-string v27, "gameFilter.ageRatingBandString"

    if-nez v21, :cond_0

    const-string v21, "18"

    .end local v21    # "rating":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1365
    if-eqz v10, :cond_1

    .line 1366
    const-string v27, "gameFilter.genreIdsString"

    move-object/from16 v0, v27

    invoke-static {v11, v0, v10}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1368
    :cond_1
    const-string v27, "page"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v11, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1372
    .local v24, "started":J
    const-string v27, "http://uk.playstation.com/ajax/games-hub/"

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v11, v2}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v6

    .line 1374
    .local v6, "catalogPage":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 1375
    const-string v27, "parseGameCatalog/data fetch"

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v24

    .line 1377
    :cond_2
    move/from16 v9, p2

    .line 1378
    .local v9, "fetchedPage":I
    const/16 v26, 0x0

    .line 1381
    .local v26, "totalPages":I
    sget-object v27, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_STATS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .local v14, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 1383
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1384
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1387
    :cond_3
    sget-object v27, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_ITEMS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 1389
    .local v13, "itemMatcher":Ljava/util/regex/Matcher;
    new-instance v5, Lcom/akop/bach/PSN$GameCatalogList;

    invoke-direct {v5}, Lcom/akop/bach/PSN$GameCatalogList;-><init>()V

    .line 1391
    .local v5, "catalog":Lcom/akop/bach/PSN$GameCatalogList;
    iput v9, v5, Lcom/akop/bach/PSN$GameCatalogList;->PageNumber:I

    .line 1392
    move/from16 v0, v19

    iput v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->PageSize:I

    .line 1393
    move/from16 v0, v26

    if-le v0, v9, :cond_c

    const/16 v27, 0x1

    :goto_3
    move/from16 v0, v27

    iput-boolean v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->MorePages:Z

    .line 1395
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1396
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "fetched: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "; totalPages: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "; more?: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-boolean v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->MorePages:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1399
    :cond_4
    new-instance v4, Ljava/net/URL;

    const-string v27, "http://uk.playstation.com/ajax/games-hub/"

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1401
    .local v4, "baseUrl":Ljava/net/URL;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v27, "d MMM yyyy"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v16, "mdyParser":Ljava/text/SimpleDateFormat;
    const-string v27, "^\\d+ \\S+ \\d{4}$"

    invoke-static/range {v27 .. v27}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 1403
    .local v15, "mdyDetector":Ljava/util/regex/Pattern;
    const-string v27, "^\\S+ \\d{4}$"

    invoke-static/range {v27 .. v27}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 1405
    .local v17, "myDetector":Ljava/util/regex/Pattern;
    :cond_5
    :goto_4
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_14

    .line 1407
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 1408
    .local v8, "content":Ljava/lang/String;
    sget-object v27, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_NODE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1410
    new-instance v12, Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-direct {v12}, Lcom/akop/bach/PSN$GameCatalogItem;-><init>()V

    .line 1412
    .local v12, "item":Lcom/akop/bach/PSN$GameCatalogItem;
    :cond_6
    :goto_5
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 1414
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    .line 1416
    .local v18, "nodeName":Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 1418
    const-string v27, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1420
    iget-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    .line 1421
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    goto :goto_5

    .line 1338
    .end local v4    # "baseUrl":Ljava/net/URL;
    .end local v5    # "catalog":Lcom/akop/bach/PSN$GameCatalogList;
    .end local v6    # "catalogPage":Ljava/lang/String;
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "fetchedPage":I
    .end local v11    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v12    # "item":Lcom/akop/bach/PSN$GameCatalogItem;
    .end local v13    # "itemMatcher":Ljava/util/regex/Matcher;
    .end local v14    # "m":Ljava/util/regex/Matcher;
    .end local v15    # "mdyDetector":Ljava/util/regex/Pattern;
    .end local v16    # "mdyParser":Ljava/text/SimpleDateFormat;
    .end local v17    # "myDetector":Ljava/util/regex/Pattern;
    .end local v18    # "nodeName":Ljava/lang/String;
    .end local v19    # "pageSize":I
    .end local v24    # "started":J
    .end local v26    # "totalPages":I
    .restart local v21    # "rating":[Ljava/lang/String;
    :cond_7
    const/16 v27, 0x3

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 1339
    const-string v7, "psp"

    goto/16 :goto_0

    .line 1340
    :cond_8
    const/16 v27, 0x2

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 1341
    const-string v7, "ps2"

    goto/16 :goto_0

    .line 1343
    :cond_9
    const-string v7, "ps3"

    goto/16 :goto_0

    .line 1348
    :cond_a
    const-string v23, "RELEASE_DATE"

    goto/16 :goto_1

    .line 1353
    :cond_b
    const-string v22, "coming-soon"

    goto/16 :goto_2

    .line 1393
    .end local v21    # "rating":[Ljava/lang/String;
    .restart local v5    # "catalog":Lcom/akop/bach/PSN$GameCatalogList;
    .restart local v6    # "catalogPage":Ljava/lang/String;
    .restart local v9    # "fetchedPage":I
    .restart local v11    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v13    # "itemMatcher":Ljava/util/regex/Matcher;
    .restart local v14    # "m":Ljava/util/regex/Matcher;
    .restart local v19    # "pageSize":I
    .restart local v24    # "started":J
    .restart local v26    # "totalPages":I
    :cond_c
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 1423
    .restart local v4    # "baseUrl":Ljava/net/URL;
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v12    # "item":Lcom/akop/bach/PSN$GameCatalogItem;
    .restart local v15    # "mdyDetector":Ljava/util/regex/Pattern;
    .restart local v16    # "mdyParser":Ljava/text/SimpleDateFormat;
    .restart local v17    # "myDetector":Ljava/util/regex/Pattern;
    .restart local v18    # "nodeName":Ljava/lang/String;
    :cond_d
    const-string v27, "release_date"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 1425
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    .line 1426
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    iput-wide v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDateTicks:J

    .line 1428
    const/16 v20, 0x0

    .line 1429
    .local v20, "parseDate":Ljava/lang/String;
    iget-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 1430
    iget-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1434
    :cond_e
    :goto_6
    if-eqz v20, :cond_6

    .line 1438
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDateTicks:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1440
    :catch_0
    move-exception v27

    goto/16 :goto_5

    .line 1431
    :cond_f
    iget-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 1432
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "1 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_6

    .line 1445
    .end local v20    # "parseDate":Ljava/lang/String;
    :cond_10
    const-string v27, "genre"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 1446
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->Genre:Ljava/lang/String;

    goto/16 :goto_5

    .line 1447
    :cond_11
    const-string v27, "detail_link"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 1448
    new-instance v27, Ljava/net/URL;

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->DetailUrl:Ljava/lang/String;

    goto/16 :goto_5

    .line 1449
    :cond_12
    const-string v27, "thumbnail_image_url"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 1450
    new-instance v27, Ljava/net/URL;

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->BoxartUrl:Ljava/lang/String;

    goto/16 :goto_5

    .line 1454
    .end local v18    # "nodeName":Ljava/lang/String;
    :cond_13
    iget-object v0, v12, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1457
    iget-object v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->Items:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1460
    .end local v8    # "content":Ljava/lang/String;
    .end local v12    # "item":Lcom/akop/bach/PSN$GameCatalogItem;
    :cond_14
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v27

    if-eqz v27, :cond_15

    .line 1461
    const-string v27, "parseGameCatalog/parsing"

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1463
    :cond_15
    return-object v5
.end method

.method protected parseGameCatalogItemDetails(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;
    .locals 7
    .param p1, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1469
    if-nez p1, :cond_1

    .line 1470
    const/4 v1, 0x0

    .line 1496
    :cond_0
    :goto_0
    return-object v1

    .line 1473
    :cond_1
    invoke-static {p1}, Lcom/akop/bach/PSN$GameCatalogItemDetails;->fromItem(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v1

    .line 1475
    .local v1, "details":Lcom/akop/bach/PSN$GameCatalogItemDetails;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1477
    .local v4, "started":J
    iget-object v3, p1, Lcom/akop/bach/PSN$GameCatalogItem;->DetailUrl:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1479
    .local v0, "detailPage":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1480
    const-string v3, "parseGameCatalogItemDetails/data fetch"

    invoke-static {v3, v4, v5}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1483
    :cond_2
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_DETAIL_DESC:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1485
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Description:Ljava/lang/String;

    .line 1493
    :cond_3
    :goto_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1494
    const-string v3, "parseGameCatalogItemDetails/parsing"

    invoke-static {v3, v4, v5}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    goto :goto_0

    .line 1487
    :cond_4
    sget-object v3, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_GAME_CATALOG_DETAIL_DESC_ALT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1489
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Description:Ljava/lang/String;

    goto :goto_1
.end method

.method protected parseGamerProfile(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$GamerProfileInfo;
    .locals 27
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "psnId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    const-string v23, "http://uk.playstation.com/psn/mypsn/trophies-compare/?friend=%1$s"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "UTF-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 1003
    .local v22, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, "friendData":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1006
    .local v20, "updated":J
    move-wide/from16 v18, v20

    .line 1008
    .local v18, "started":J
    new-instance v9, Lcom/akop/bach/PSN$GamerProfileInfo;

    invoke-direct {v9}, Lcom/akop/bach/PSN$GamerProfileInfo;-><init>()V

    .line 1011
    .local v9, "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    sget-object v23, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1012
    .local v7, "friendMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1014
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1016
    .local v5, "friendCard":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1017
    .local v13, "onlineId":Ljava/lang/String;
    sget-object v23, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_ONLINE_ID:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .local v12, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1018
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1020
    :cond_0
    if-eqz v13, :cond_9

    .line 1022
    const/4 v15, 0x0

    .line 1023
    .local v15, "progress":I
    sget-object v23, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_PROGRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1024
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1026
    :cond_1
    const/4 v11, 0x0

    .line 1027
    .local v11, "level":I
    sget-object v23, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_LEVEL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1028
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1030
    :cond_2
    const/4 v10, 0x0

    .line 1031
    .local v10, "iconUrl":Ljava/lang/String;
    sget-object v23, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_AVATAR:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1032
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getLargeAvatarIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1035
    :cond_3
    const/4 v4, 0x0

    .line 1036
    .local v4, "bronze":I
    const/16 v16, 0x0

    .line 1037
    .local v16, "silver":I
    const/4 v8, 0x0

    .line 1038
    .local v8, "gold":I
    const/4 v14, 0x0

    .line 1040
    .local v14, "platinum":I
    sget-object v23, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_FRIEND_SUMMARY_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1041
    :cond_4
    :goto_0
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1043
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 1044
    .local v17, "type":Ljava/lang/String;
    const-string v23, "bronze"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1045
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1046
    :cond_5
    const-string v23, "silver"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1047
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto :goto_0

    .line 1048
    :cond_6
    const-string v23, "gold"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1049
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 1050
    :cond_7
    const-string v23, "platinum"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1051
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_0

    .line 1054
    .end local v17    # "type":Ljava/lang/String;
    :cond_8
    iput-object v13, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->OnlineId:Ljava/lang/String;

    .line 1055
    iput-object v10, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->AvatarUrl:Ljava/lang/String;

    .line 1056
    iput v11, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->Level:I

    .line 1057
    iput v15, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->Progress:I

    .line 1058
    iput v14, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->PlatinumTrophies:I

    .line 1059
    iput v8, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->GoldTrophies:I

    .line 1060
    move/from16 v0, v16

    iput v0, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->SilverTrophies:I

    .line 1061
    iput v4, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->BronzeTrophies:I

    .line 1062
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->OnlineStatus:I

    .line 1063
    const/16 v23, 0x0

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/akop/bach/PSN$GamerProfileInfo;->Playing:Ljava/lang/String;

    .line 1067
    .end local v4    # "bronze":I
    .end local v5    # "friendCard":Ljava/lang/String;
    .end local v8    # "gold":I
    .end local v10    # "iconUrl":Ljava/lang/String;
    .end local v11    # "level":I
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .end local v13    # "onlineId":Ljava/lang/String;
    .end local v14    # "platinum":I
    .end local v15    # "progress":I
    .end local v16    # "silver":I
    :cond_9
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1068
    const-string v23, "parseGamerProfile/processing"

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1070
    :cond_a
    return-object v9
.end method

.method protected parseGames(Lcom/akop/bach/PsnAccount;)V
    .locals 29
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 435
    .local v24, "started":J
    const/16 v20, 0x1

    .line 436
    .local v20, "keepGoing":Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v14, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v23, 0x0

    .local v23, "startIndex":I
    :goto_0
    if-eqz v20, :cond_0

    .line 440
    const-string v5, "http://uk.playstation.com/psn/mypsn/ajax/trophies/?startIndex=%1$d&sortBy=recent"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 441
    .local v28, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 443
    .local v22, "page":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v14}, Lcom/akop/bach/parser/PsnEuParser;->parseGamePage(ILjava/lang/String;Ljava/util/List;)Z

    move-result v20

    .line 438
    add-int/lit8 v23, v23, 0x10

    goto :goto_0

    .line 446
    .end local v22    # "page":Ljava/lang/String;
    .end local v28    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v10

    .line 447
    .local v10, "accountId":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 448
    .local v4, "cr":Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    .line 450
    .local v8, "queryParams":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 451
    .local v26, "updated":J
    new-instance v21, Ljava/util/ArrayList;

    const/16 v5, 0x64

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v21, "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 456
    .local v13, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    const-string v6, "Uid"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 457
    sget-object v5, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/akop/bach/parser/PsnEuParser;->GAMES_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AccountId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " AND "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "Uid"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 463
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_3

    .line 465
    :cond_2
    const-string v5, "AccountId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 466
    const-string v5, "TrophiesDirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string v5, "LastUpdated"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 469
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :goto_2
    if-eqz v12, :cond_1

    .line 498
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 473
    :cond_3
    const/16 v19, 0x0

    .line 474
    .local v19, "isDirty":Z
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 476
    .local v16, "gameId":J
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "Progress"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 477
    const/16 v19, 0x1

    .line 478
    :cond_4
    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "UnlockedBronze"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 479
    const/16 v19, 0x1

    .line 480
    :cond_5
    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "UnlockedSilver"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_6

    .line 481
    const/16 v19, 0x1

    .line 482
    :cond_6
    const/4 v5, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "UnlockedGold"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 483
    const/16 v19, 0x1

    .line 484
    :cond_7
    const/4 v5, 0x5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "UnlockedPlatinum"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_8

    .line 485
    const/16 v19, 0x1

    .line 487
    :cond_8
    if-eqz v19, :cond_9

    .line 488
    const-string v5, "TrophiesDirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    :cond_9
    const-string v5, "LastUpdated"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    sget-object v5, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v13, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 497
    .end local v16    # "gameId":J
    .end local v19    # "isDirty":Z
    :catchall_0
    move-exception v5

    if-eqz v12, :cond_a

    .line 498
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v5

    .line 502
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "cv":Landroid/content/ContentValues;
    :cond_b
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 503
    const-string v5, "Game page processing"

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v24

    .line 505
    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 507
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    new-array v15, v5, [Landroid/content/ContentValues;

    .line 508
    .local v15, "cvs":[Landroid/content/ContentValues;
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 510
    sget-object v5, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v15}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 512
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 513
    const-string v5, "Game page insertion"

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 516
    .end local v15    # "cvs":[Landroid/content/ContentValues;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/akop/bach/PsnAccount;->setLastGameUpdate(J)V

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/akop/bach/PsnAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 520
    sget-object v5, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 521
    return-void
.end method

.method protected parseSummaryData(Lcom/akop/bach/PsnAccount;)Landroid/content/ContentValues;
    .locals 24
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 290
    const-string v20, "https://secure.eu.playstation.com/psn/mypsn/"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 291
    .local v11, "page":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 294
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 296
    .local v14, "started":J
    sget-object v20, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_ONLINE_ID:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .local v9, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-nez v20, :cond_0

    .line 297
    new-instance v20, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f080077

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-direct/range {v20 .. v23}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v20

    .line 299
    :cond_0
    const-string v20, "OnlineId"

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v10, 0x0

    .line 302
    .local v10, "memberType":I
    sget-object v20, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_IS_PLUS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 303
    const/4 v10, 0x1

    .line 305
    :cond_1
    const/4 v8, 0x0

    .line 306
    .local v8, "level":I
    const/16 v17, 0x0

    .line 307
    .local v17, "trophiesPlat":I
    const/16 v16, 0x0

    .line 308
    .local v16, "trophiesGold":I
    const/16 v18, 0x0

    .line 309
    .local v18, "trophiesSilver":I
    const/4 v13, 0x0

    .line 311
    .local v13, "trophiesBronze":I
    sget-object v20, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_INFOBAR_ITEM:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 312
    .local v7, "infoBarMatcher":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 314
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 315
    .local v19, "value":I
    if-nez v5, :cond_3

    .line 316
    move/from16 v8, v19

    .line 312
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 317
    :cond_3
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v5, v0, :cond_4

    .line 318
    move/from16 v13, v19

    goto :goto_1

    .line 319
    :cond_4
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v5, v0, :cond_5

    .line 320
    move/from16 v18, v19

    goto :goto_1

    .line 321
    :cond_5
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v5, v0, :cond_6

    .line 322
    move/from16 v16, v19

    goto :goto_1

    .line 323
    :cond_6
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v5, v0, :cond_2

    .line 324
    move/from16 v17, v19

    goto :goto_1

    .line 327
    .end local v19    # "value":I
    :cond_7
    const/4 v12, 0x0

    .line 328
    .local v12, "progress":I
    sget-object v20, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_PROGRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 329
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 331
    :cond_8
    const-string v20, "Level"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v20, "MemberType"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v20, "Progress"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v20, "PlatinumTrophies"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v20, "GoldTrophies"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v20, "SilverTrophies"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v20, "BronzeTrophies"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const/4 v6, 0x0

    .line 340
    .local v6, "iconUrl":Ljava/lang/String;
    sget-object v20, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_AVATAR_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 341
    const-string v20, "https://secure.eu.playstation.com/psn/mypsn/"

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getLargeAvatarIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 344
    :cond_9
    const-string v20, "IconUrl"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 347
    const-string v20, "parseSummaryData processing"

    move-object/from16 v0, v20

    invoke-static {v0, v14, v15}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v14

    .line 349
    :cond_a
    return-object v4
.end method

.method protected parseTrophies(Lcom/akop/bach/PsnAccount;J)V
    .locals 30
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "gameId"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 531
    .local v4, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/PSN$Games;->getUid(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 533
    .local v12, "gameUid":Ljava/lang/String;
    const-string v27, "http://uk.playstation.com/psn/mypsn/trophies/detail/?title=%1$s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v12, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 534
    .local v26, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 536
    .local v17, "page":Ljava/lang/String;
    const/4 v14, 0x0

    .line 537
    .local v14, "index":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 539
    .local v18, "started":J
    sget-object v27, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 542
    .local v21, "trophies":Ljava/util/regex/Matcher;
    new-instance v6, Ljava/util/ArrayList;

    const/16 v27, 0x64

    move/from16 v0, v27

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 543
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 545
    const-string v27, "true"

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    .line 546
    .local v24, "trophyUnlocked":Z
    const/16 v27, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 548
    .local v22, "trophyContent":Ljava/lang/String;
    const/4 v13, 0x0

    .line 549
    .local v13, "iconUrl":Ljava/lang/String;
    sget-object v27, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_TROPHY_ICON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .local v16, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 550
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/PsnEuParser;->getLargeTrophyIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 552
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f08011c

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 553
    .local v20, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f08013f

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 555
    .local v8, "description":Ljava/lang/String;
    sget-object v27, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_TROPHY_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 558
    const/16 v25, 0x0

    .line 559
    .local v25, "type":I
    const/4 v15, 0x0

    .line 560
    .local v15, "isSecret":Z
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 561
    .local v23, "trophyType":Ljava/lang/String;
    const-string v27, "BRONZE"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 562
    const/16 v25, 0x1

    .line 572
    :cond_2
    :goto_1
    if-nez v15, :cond_3

    .line 574
    const/16 v27, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 575
    sget-object v27, Lcom/akop/bach/parser/PsnEuParser;->PATTERN_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 576
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/akop/bach/parser/PsnEuParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 579
    :cond_3
    const-wide/16 v10, 0x0

    .line 580
    .local v10, "earned":J
    const/4 v9, 0x0

    .line 581
    .local v9, "earnedText":Ljava/lang/String;
    if-eqz v24, :cond_4

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnEuParser;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f08014d

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 588
    :cond_4
    new-instance v5, Landroid/content/ContentValues;

    const/16 v27, 0x14

    move/from16 v0, v27

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 590
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v27, "Title"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v27, "Description"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v27, "SortOrder"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    const-string v27, "Earned"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 594
    const-string v27, "EarnedText"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v27, "IconUrl"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v27, "GameId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 597
    const-string v28, "IsSecret"

    if-eqz v15, :cond_9

    const/16 v27, 0x1

    :goto_2
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const-string v27, "Type"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    add-int/lit8 v14, v14, 0x1

    .line 602
    goto/16 :goto_0

    .line 563
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v9    # "earnedText":Ljava/lang/String;
    .end local v10    # "earned":J
    :cond_5
    const-string v27, "SILVER"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 564
    const/16 v25, 0x2

    goto/16 :goto_1

    .line 565
    :cond_6
    const-string v27, "GOLD"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 566
    const/16 v25, 0x3

    goto/16 :goto_1

    .line 567
    :cond_7
    const-string v27, "PLATINUM"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 568
    const/16 v25, 0x4

    goto/16 :goto_1

    .line 569
    :cond_8
    const-string v27, "UNKNOWN"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 570
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 597
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v9    # "earnedText":Ljava/lang/String;
    .restart local v10    # "earned":J
    :cond_9
    const/16 v27, 0x0

    goto :goto_2

    .line 604
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "description":Ljava/lang/String;
    .end local v9    # "earnedText":Ljava/lang/String;
    .end local v10    # "earned":J
    .end local v13    # "iconUrl":Ljava/lang/String;
    .end local v15    # "isSecret":Z
    .end local v16    # "m":Ljava/util/regex/Matcher;
    .end local v20    # "title":Ljava/lang/String;
    .end local v22    # "trophyContent":Ljava/lang/String;
    .end local v23    # "trophyType":Ljava/lang/String;
    .end local v24    # "trophyUnlocked":Z
    .end local v25    # "type":I
    :cond_a
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 605
    const-string v27, "New trophy parsing"

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v18

    .line 607
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v7, v0, [Landroid/content/ContentValues;

    .line 608
    .local v7, "cva":[Landroid/content/ContentValues;
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 610
    sget-object v27, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "GameId="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 613
    sget-object v27, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 614
    sget-object v27, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 616
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 617
    const-string v27, "New trophy processing"

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v18

    .line 620
    :cond_c
    new-instance v5, Landroid/content/ContentValues;

    const/16 v27, 0xa

    move/from16 v0, v27

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 621
    .restart local v5    # "cv":Landroid/content/ContentValues;
    const-string v27, "TrophiesDirty"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    sget-object v27, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "_id="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 624
    sget-object v27, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 627
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 628
    const-string v27, "Updating Game"

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnEuParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 629
    :cond_d
    return-void
.end method
