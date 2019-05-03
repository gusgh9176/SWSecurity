.class public Lcom/akop/bach/parser/XboxLiveParser;
.super Lcom/akop/bach/parser/LiveParser;
.source "XboxLiveParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/parser/XboxLiveParser$Gamer;,
        Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;,
        Lcom/akop/bach/parser/XboxLiveParser$Parseable;
    }
.end annotation


# static fields
.field private static final BOXART_TEMPLATE:Ljava/lang/String; = "http://tiles.xbox.com/consoleAssets/%1$X/%2$s/%3$s"

.field private static final COLUMN_FRIEND_ID:I = 0x0

.field private static final COLUMN_GAME_ACHIEVEMENTS_ACQUIRED:I = 0x3

.field private static final COLUMN_GAME_ACHIEVEMENTS_TOTAL:I = 0x4

.field private static final COLUMN_GAME_ID:I = 0x0

.field private static final COLUMN_GAME_LAST_PLAYED_DATE:I = 0x1

.field private static final COLUMN_GAME_UID:I = 0x2

.field private static final FRIENDS_PROJECTION:[Ljava/lang/String;

.field private static final FRIEND_MANAGER_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final FRIEND_MANAGER_ADD:Ljava/lang/String; = "Add"

.field private static final FRIEND_MANAGER_CANCEL:Ljava/lang/String; = "Cancel"

.field private static final FRIEND_MANAGER_REJECT:Ljava/lang/String; = "Decline"

.field private static final FRIEND_MANAGER_REMOVE:Ljava/lang/String; = "Remove"

.field private static final GAMES_PROJECTION:[Ljava/lang/String;

.field public static final MAX_BEACONS:I = 0x3

.field private static final PATTERN_ACH_JSON:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_ACH_JSON:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAMERCARD_REP:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAMERPIC_AVATAR:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAMERPIC_CLASSIC:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_OVERVIEW_BANNER:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_OVERVIEW_DESCRIPTION:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_OVERVIEW_ESRB:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_OVERVIEW_IMAGE:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_OVERVIEW_MANUAL:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_OVERVIEW_REDIRECTING_URL:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_OVERVIEW_TITLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_LOADBAL_ICON:Ljava/util/regex/Pattern;

.field private static final PATTERN_STATUS_ITEM:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_ACTIVITY:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_BIO:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_GAMERPIC:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_GAMERTAG:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_IS_FRIEND:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_LOCATION:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_MOTTO:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_NAME:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_POINTS:Ljava/util/regex/Pattern;

.field private static final PATTERN_SUMMARY_REP:Ljava/util/regex/Pattern;

.field private static final STAR_CLASSES:[Ljava/lang/String;

.field private static final URL_ACHIEVEMENTS:Ljava/lang/String; = "https://live.xbox.com/%1$s/Activity/Details?titleId=%2$s"

.field private static final URL_AVATAR_BODY:Ljava/lang/String; = "http://avatar.xboxlive.com/avatar/%s/avatar-body.png"

.field private static final URL_COMPARE_ACHIEVEMENTS:Ljava/lang/String; = "https://live.xbox.com/%1$s/Activity/Details?compareTo=%3$s&titleId=%2$s"

.field private static final URL_EDIT_PROFILE:Ljava/lang/String; = "https://live.xbox.com/%1$s/MyXbox/GamerProfile"

.field private static final URL_GAMERCARD:Ljava/lang/String; = "http://gamercard.xbox.com/%1$s/%2$s.card"

.field private static final URL_GAMERPIC:Ljava/lang/String; = "http://avatar.xboxlive.com/avatar/%s/avatarpic-l.png"

.field private static final URL_JSON_BEACONS:Ljava/lang/String; = "https://live.xbox.com/%1$s/Beacons/JumpInList"

.field private static final URL_JSON_BEACON_CLEAR:Ljava/lang/String; = "https://live.xbox.com/%1$s/Beacons/Clear"

.field private static final URL_JSON_BEACON_SET:Ljava/lang/String; = "https://live.xbox.com/%1$s/Beacons/Set"

.field private static final URL_JSON_BLOCK_MESSAGE:Ljava/lang/String; = "https://live.xbox.com/%1$s/Messages/Block"

.field private static final URL_JSON_COMPARE_GAMES:Ljava/lang/String; = "https://live.xbox.com/%1$s/Activity/Summary?CompareTo=%2$s"

.field private static final URL_JSON_DELETE_MESSAGE:Ljava/lang/String; = "https://live.xbox.com/%1$s/Messages/Delete"

.field private static final URL_JSON_FOF_LIST:Ljava/lang/String; = "https://live.xbox.com/%1$s/Friends/List"

.field private static final URL_JSON_FRIEND_LIST:Ljava/lang/String; = "https://live.xbox.com/%1$s/Friends/List"

.field private static final URL_JSON_FRIEND_REQUEST:Ljava/lang/String; = "https://live.xbox.com/%1$s/Friends/%2$s"

.field private static final URL_JSON_GAME_LIST:Ljava/lang/String; = "https://live.xbox.com/%1$s/Activity/Summary"

.field private static final URL_JSON_MESSAGE_LIST:Ljava/lang/String; = "https://live.xbox.com/%1$s/Messages/GetMessages"

.field private static final URL_JSON_PROFILE:Ljava/lang/String; = "https://live.xbox.com/Handlers/ShellData.ashx?culture=%1$s&XBXMChg=%2$d&XBXNChg=%2$d&XBXSPChg=%2$d&XBXChg=%2$d&leetcallback=jsonp1287728723001"

.field private static final URL_JSON_PROFILE_REFERER:Ljava/lang/String; = "https://live.xbox.com/en-US/MyXbox"

.field private static final URL_JSON_READ_MESSAGE:Ljava/lang/String; = "https://live.xbox.com/%1$s/Messages/Message"

.field private static final URL_JSON_RECENT_LIST:Ljava/lang/String; = "https://live.xbox.com/%1$s/Friends/Recent"

.field private static final URL_JSON_SEND_MESSAGE:Ljava/lang/String; = "https://live.xbox.com/%1$s/Messages/SendMessage"

.field private static final URL_MY_PROFILE:Ljava/lang/String; = "https://account.xbox.com/%1$s/Profile/"

.field private static final URL_SECRET_ACHIEVE_TILE:Ljava/lang/String; = "http://live.xbox.com/Content/Images/HiddenAchievement.png"

.field private static final URL_STATUS:Ljava/lang/String; = "https://support.xbox.com/%1$s/xbox-live-status"

.field private static final URL_VTOKEN_ACTIVITY:Ljava/lang/String; = "https://live.xbox.com/%1$s/Activity?xr=socialtwistnav"

.field private static final URL_VTOKEN_COMPARE_GAMES:Ljava/lang/String; = "https://live.xbox.com/%1$s/Activity?compareTo=%2$s"

.field private static final URL_VTOKEN_FRIENDS:Ljava/lang/String; = "https://live.xbox.com/%1$s/Home?xr=socialtwistnav"

.field private static final URL_VTOKEN_FRIEND_REQUEST:Ljava/lang/String; = "https://live.xbox.com/%1$s/Profile?gamertag=%2$s"

.field private static final URL_VTOKEN_MESSAGES:Ljava/lang/String; = "https://live.xbox.com/%1$s/Messages?xr=socialtwistnav"


# instance fields
.field private mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 172
    const-string v0, "/(1)(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAMERPIC_CLASSIC:Ljava/util/regex/Pattern;

    .line 174
    const-string v0, "/avatarpic-(s)(.png)$"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAMERPIC_AVATAR:Ljava/util/regex/Pattern;

    .line 177
    const-string v0, "broker\\.publish\\(routes\\.activity\\.details\\.load\\, (.*)\\);\\s*\\}\\);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_COMPARE_ACH_JSON:Ljava/util/regex/Pattern;

    .line 180
    const-string v0, "broker\\.publish\\(routes\\.activity\\.details\\.load\\, (.*)\\);\\s*\\}\\);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_ACH_JSON:Ljava/util/regex/Pattern;

    .line 183
    const-string v0, "^http://([0-9\\.]+/)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_LOADBAL_ICON:Ljava/util/regex/Pattern;

    .line 186
    const-string v0, "class=\"Star ([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAMERCARD_REP:Ljava/util/regex/Pattern;

    .line 189
    const-string v0, "<div class=\"name\" title=\"[^\"]*\">.*?<div class=\"value\">([^<]*)</div>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_NAME:Ljava/util/regex/Pattern;

    .line 192
    const-string v0, "<div class=\"location\">.*?<div class=\"value\">([^<]*)</div>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_LOCATION:Ljava/util/regex/Pattern;

    .line 195
    const-string v0, "<div class=\"bio\">.*?<div class=\"value\" title=\"[^\"]*\">([^<]*)</div>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_BIO:Ljava/util/regex/Pattern;

    .line 198
    const-string v0, "<img class=\"gamerpic\" src=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_GAMERPIC:Ljava/util/regex/Pattern;

    .line 200
    const-string v0, "<div class=\"motto\">([^<]*)<"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_MOTTO:Ljava/util/regex/Pattern;

    .line 202
    const-string v0, "<div class=\"presence\">([^>]*)</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_ACTIVITY:Ljava/util/regex/Pattern;

    .line 204
    const-string v0, "<a class=\"removeFriend button\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_IS_FRIEND:Ljava/util/regex/Pattern;

    .line 207
    const-string v0, "<div id=\"reputationProgress\" class=\"[^\"]*\" data-ringpercent *=\"([0-9]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_REP:Ljava/util/regex/Pattern;

    .line 209
    const-string v0, "<div id=\"myGamertag\">([^<]+)<"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_GAMERTAG:Ljava/util/regex/Pattern;

    .line 211
    const-string v0, "<div class=\"gamerScore\">([0-9,]+)</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_SUMMARY_POINTS:Ljava/util/regex/Pattern;

    .line 214
    const-string v0, "<h1>([^<]*)</h1>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_TITLE:Ljava/util/regex/Pattern;

    .line 216
    const-string v0, "<div class=\"Text\">\\s*<p\\s*[^>]*>([^<]+)</p>\\s*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_DESCRIPTION:Ljava/util/regex/Pattern;

    .line 218
    const-string v0, "<a class=\"Manual\" href=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_MANUAL:Ljava/util/regex/Pattern;

    .line 220
    const-string v0, "<img alt=\"([^\"]*)\" class=\"ratingLogo\" src=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_ESRB:Ljava/util/regex/Pattern;

    .line 222
    const-string v0, "<div id=\"image\\d+\" class=\"TabPage\">\\s*<img (?:width=\"[^\"]*\" )?src=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_IMAGE:Ljava/util/regex/Pattern;

    .line 224
    const-string v0, "<img src=\"([^\"]*)\" alt=\"[^\"]*\" class=\"Banner\" />"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_BANNER:Ljava/util/regex/Pattern;

    .line 227
    const-string v0, "<div class=\"item\">\\s+<h3>(?:<a href=\"[^\"]+\">)?([^<]+)(?:</a>)?<span class=\"([^\"]+)\">([^<]+)</span></h3>(?:\\s+<div class=\"details\">(.*?)</div>)?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_STATUS_ITEM:Ljava/util/regex/Pattern;

    .line 231
    const-string v0, "/Title/\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_REDIRECTING_URL:Ljava/util/regex/Pattern;

    .line 240
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "LastPlayed"

    aput-object v1, v0, v4

    const-string v1, "Uid"

    aput-object v1, v0, v5

    const-string v1, "AchievementsUnlocked"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "AchievementsTotal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->GAMES_PROJECTION:[Ljava/lang/String;

    .line 248
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "empty"

    aput-object v1, v0, v3

    const-string v1, "quarter"

    aput-object v1, v0, v4

    const-string v1, "half"

    aput-object v1, v0, v5

    const-string v1, "threequarter"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "full"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->STAR_CLASSES:[Ljava/lang/String;

    .line 263
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/akop/bach/parser/XboxLiveParser;->FRIENDS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/LiveParser;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "language":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "country":Ljava/lang/String;
    const v2, 0x7f080172

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    .line 278
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XboxLiveParser: using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " locale (default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->parseAccountSummary(Lcom/akop/bach/XboxLiveAccount;)V

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->parseGames(Lcom/akop/bach/XboxLiveAccount;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;JZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/akop/bach/parser/XboxLiveParser;->parseToggleBeacon(Lcom/akop/bach/XboxLiveAccount;JZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->parseFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedGameInfo;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/parser/XboxLiveParser;->parseCompareGames(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedGameInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$FriendsOfFriend;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/parser/XboxLiveParser;->parseFriendsOfFriend(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$FriendsOfFriend;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/XboxLive$RecentPlayers;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->parseRecentPlayers(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/XboxLive$RecentPlayers;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedAchievementInfo;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->parseCompareAchievements(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/akop/bach/parser/XboxLiveParser;Ljava/lang/String;)Lcom/akop/bach/XboxLive$GameOverviewInfo;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->parseGameOverview(Ljava/lang/String;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->parseAchievements(Lcom/akop/bach/XboxLiveAccount;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->parseFriends(Lcom/akop/bach/XboxLiveAccount;)V

    return-void
.end method

.method static synthetic access$400(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->parseMessages(Lcom/akop/bach/XboxLiveAccount;)V

    return-void
.end method

.method static synthetic access$500(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->parseViewMessage(Lcom/akop/bach/XboxLiveAccount;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->parseDeleteMessage(Lcom/akop/bach/XboxLiveAccount;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->parseBlockMessage(Lcom/akop/bach/XboxLiveAccount;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->parseSendMessage(Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/XboxLiveParser;
    .param p1, "x1"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/akop/bach/parser/XboxLiveParser;->parseUpdateProfile(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;,
            Lcom/akop/bach/parser/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 2613
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser$13;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2622
    return-void
.end method

.method private fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;)Ljava/lang/Object;
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "parseable"    # Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 2312
    const/4 v1, 0x0

    .line 2313
    .local v1, "reauthenticated":Z
    const/4 v2, 0x0

    .line 2317
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/akop/bach/parser/XboxLiveParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2318
    new-instance v3, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v4, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v5, 0x7f08006f

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2323
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;->doParse()Ljava/lang/Object;

    move-result-object v2

    .line 2324
    .local v2, "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lcom/akop/bach/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2370
    return-object v2

    .line 2328
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2330
    .local v0, "e":Lcom/akop/bach/parser/ParserException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2332
    const-string v3, "Unexpected exception"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2333
    invoke-virtual {v0}, Lcom/akop/bach/parser/ParserException;->printStackTrace()V

    .line 2336
    :cond_1
    if-eqz v1, :cond_4

    .line 2337
    throw v0

    .line 2339
    .end local v0    # "e":Lcom/akop/bach/parser/ParserException;
    :catch_1
    move-exception v0

    .line 2341
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2343
    const-string v3, "Unexpected exception"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2344
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 2347
    :cond_2
    if-eqz v1, :cond_4

    .line 2348
    throw v0

    .line 2350
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 2352
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2354
    const-string v3, "Unexpected exception"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2358
    :cond_3
    if-eqz v1, :cond_4

    .line 2359
    throw v0

    .line 2362
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2363
    const-string v3, "Re-authenticating"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2365
    :cond_5
    const/4 v1, 0x1

    .line 2366
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    goto :goto_0
.end method

.method private fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "parseable"    # Lcom/akop/bach/parser/XboxLiveParser$Parseable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2376
    const/4 v1, 0x0

    .line 2380
    .local v1, "reauthenticated":Z
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/XboxLiveParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2381
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2386
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/akop/bach/parser/XboxLiveParser$Parseable;->doParse()V

    .line 2387
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lcom/akop/bach/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2432
    return-void

    .line 2391
    :catch_0
    move-exception v0

    .line 2393
    .local v0, "e":Lcom/akop/bach/parser/ParserException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2395
    const-string v2, "Unexpected exception"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {v0}, Lcom/akop/bach/parser/ParserException;->printStackTrace()V

    .line 2399
    :cond_1
    if-eqz v1, :cond_4

    .line 2400
    throw v0

    .line 2402
    .end local v0    # "e":Lcom/akop/bach/parser/ParserException;
    :catch_1
    move-exception v0

    .line 2404
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2406
    const-string v2, "Unexpected exception"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2407
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 2410
    :cond_2
    if-eqz v1, :cond_4

    .line 2411
    throw v0

    .line 2413
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 2415
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2417
    const-string v2, "Unexpected exception"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2418
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2421
    :cond_3
    if-eqz v1, :cond_4

    .line 2422
    throw v0

    .line 2425
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2426
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2428
    :cond_5
    const/4 v1, 0x1

    .line 2429
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    goto :goto_0
.end method

.method public static getAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "gamertag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 377
    if-nez p0, :cond_0

    .line 387
    :goto_0
    return-object v1

    .line 382
    :cond_0
    :try_start_0
    const-string v2, "http://avatar.xboxlive.com/avatar/%s/avatar-body.png"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private getBoxArt(JZ)Ljava/lang/String;
    .locals 5
    .param p1, "titleId"    # J
    .param p3, "largeBoxart"    # Z

    .prologue
    .line 551
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 556
    :goto_0
    return-object v1

    .line 554
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "largeboxart.jpg"

    .line 556
    .local v0, "jpgFile":Ljava/lang/String;
    :goto_1
    const-string v1, "http://tiles.xbox.com/consoleAssets/%1$X/%2$s/%3$s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 554
    .end local v0    # "jpgFile":Ljava/lang/String;
    :cond_1
    const-string v0, "smallboxart.jpg"

    goto :goto_1
.end method

.method private getBoxArt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "titleId"    # Ljava/lang/String;
    .param p2, "largeBoxart"    # Z

    .prologue
    const/4 v1, 0x0

    .line 529
    if-nez p1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-object v1

    .line 536
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 546
    .local v2, "titleAsNumber":J
    invoke-direct {p0, v2, v3, p2}, Lcom/akop/bach/parser/XboxLiveParser;->getBoxArt(JZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 538
    .end local v2    # "titleAsNumber":J
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoxArt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be parsed as integer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getGamerpicUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "gamertag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 393
    if-nez p0, :cond_0

    .line 403
    :goto_0
    return-object v1

    .line 398
    :cond_0
    :try_start_0
    const-string v2, "http://avatar.xboxlive.com/avatar/%s/avatarpic-l.png"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static getLargeGamerpic(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "iconUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    sget-object v1, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAMERPIC_CLASSIC:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    const-string v1, "%s2%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 357
    .end local p0    # "iconUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 349
    .restart local p0    # "iconUrl":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAMERPIC_AVATAR:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const-string v1, "%sl%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 353
    :cond_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "%s has an unrecognized format; returning original"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getStandardIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "loadBalIcon"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 362
    if-nez p0, :cond_1

    .line 363
    const/4 p0, 0x0

    .line 372
    .end local p0    # "loadBalIcon":Ljava/lang/String;
    .local v0, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 366
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .restart local p0    # "loadBalIcon":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_LOADBAL_ICON:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .restart local v0    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "replacement":Ljava/lang/String;
    move-object p0, v1

    .line 372
    goto :goto_0
.end method

.method private getStarRating(Ljava/lang/String;)I
    .locals 7
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 426
    sget-object v5, Lcom/akop/bach/parser/XboxLiveParser;->STAR_CLASSES:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 427
    .local v3, "starClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 429
    .local v1, "rating":I
    sget-object v5, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAMERCARD_REP:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 430
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "starClass":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 435
    .local v4, "starValue":I
    add-int/2addr v1, v4

    .line 436
    goto :goto_0

    .line 438
    .end local v2    # "starClass":Ljava/lang/String;
    .end local v4    # "starValue":I
    :cond_0
    return v1
.end method

.method private getVToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v3, 0x0

    .line 486
    .local v3, "retried":Z
    const/4 v4, 0x0

    .line 494
    .local v4, "token":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/akop/bach/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 509
    .local v2, "page":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getVTokenFromContents(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/akop/bach/parser/TokenException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 524
    :goto_0
    return-object v4

    .line 496
    .end local v2    # "page":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Lcom/akop/bach/parser/ParserException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error fetching token from URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0}, Lcom/akop/bach/parser/ParserException;->printStackTrace()V

    .line 504
    :cond_0
    new-instance v5, Lcom/akop/bach/parser/TokenException;

    iget-object v6, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/akop/bach/parser/TokenException;-><init>(Landroid/content/Context;)V

    throw v5

    .line 511
    .end local v0    # "e":Lcom/akop/bach/parser/ParserException;
    .restart local v2    # "page":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 513
    .local v1, "ex":Lcom/akop/bach/parser/TokenException;
    if-eqz v3, :cond_1

    .line 514
    throw v1

    .line 516
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    const-string v5, "Token parsing initially failed; retrying"

    invoke-static {v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 519
    :cond_2
    const/4 v3, 0x1

    .line 520
    goto :goto_0
.end method

.method private getVTokenFromContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "page"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    .local v1, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lcom/akop/bach/parser/XboxLiveParser;->getInputs(Ljava/lang/String;Ljava/util/List;Ljava/util/regex/Pattern;)V

    .line 473
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 474
    .local v2, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__RequestVerificationToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 477
    .end local v2    # "pair":Lorg/apache/http/NameValuePair;
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    const-string v3, "Token parsing failed"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 480
    :cond_2
    new-instance v3, Lcom/akop/bach/parser/TokenException;

    iget-object v4, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/akop/bach/parser/TokenException;-><init>(Landroid/content/Context;)V

    throw v3
.end method

.method private getXboxJsonArray(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    .local p2, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "page":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 334
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    const/4 v2, 0x0

    .line 337
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_0
.end method

.method private getXboxJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "page"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 322
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 325
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method private getXboxJsonStatus(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)Z"
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p0, p1, p2, v3}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "page":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 312
    .local v0, "json":Lorg/json/JSONObject;
    const-string v4, "Success"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private parseAccountSummary(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 14
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 750
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->parseSummaryData(Lcom/akop/bach/XboxLiveAccount;)Landroid/content/ContentValues;

    move-result-object v9

    .line 751
    .local v9, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 753
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    .line 754
    .local v6, "accountId":J
    const/4 v10, 0x1

    .line 756
    .local v10, "newRecord":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 757
    .local v12, "started":J
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

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

    .line 762
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 764
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    const/4 v10, 0x0

    .line 766
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 769
    :cond_1
    if-eqz v10, :cond_3

    .line 771
    const-string v1, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 772
    const-string v1, "Uuid"

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 782
    :goto_0
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 784
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 785
    const-string v1, "Summary update"

    invoke-static {v1, v12, v13}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 787
    :cond_2
    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 788
    const-string v1, "Gamertag"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/XboxLiveAccount;->setGamertag(Ljava/lang/String;)V

    .line 789
    const-string v1, "IconUrl"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/XboxLiveAccount;->setIconUrl(Ljava/lang/String;)V

    .line 790
    const-string v1, "IsGold"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/XboxLiveAccount;->setGoldStatus(Z)V

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/akop/bach/XboxLiveAccount;->setLastSummaryUpdate(J)V

    .line 792
    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/XboxLiveAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 793
    return-void

    .line 778
    :cond_3
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

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

.method private parseAchievements(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 38
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1146
    .local v6, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/XboxLive$Games;->getUid(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 1148
    .local v15, "gameUid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1149
    .local v32, "updated":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 1151
    .local v28, "started":J
    const-string v31, "https://live.xbox.com/%1$s/Activity/Details?titleId=%2$s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    const/16 v35, 0x1

    aput-object v15, v34, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1154
    .local v21, "pageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1156
    .local v20, "page":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1157
    const-string v31, "Achievement page fetch"

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v28

    .line 1160
    :cond_0
    sget-object v31, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_ACH_JSON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .local v18, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-nez v31, :cond_1

    .line 1161
    new-instance v31, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f08006a

    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v31

    .line 1163
    :cond_1
    const/16 v31, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v31

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v10

    .line 1164
    .local v10, "data":Lorg/json/JSONObject;
    const-string v31, "Players"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 1166
    .local v23, "players":Lorg/json/JSONArray;
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v31

    const/16 v34, 0x1

    move/from16 v0, v31

    move/from16 v1, v34

    if-ge v0, v1, :cond_2

    .line 1167
    new-instance v31, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f08006a

    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v31

    .line 1169
    :cond_2
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 1170
    .local v22, "player":Lorg/json/JSONObject;
    const-string v31, "Gamertag"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1172
    .local v16, "gamertag":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    const/16 v31, 0x64

    move/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1174
    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v31, "Achievements"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1175
    .local v5, "achieves":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v19

    .local v19, "n":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 1177
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1178
    .local v4, "achieve":Lorg/json/JSONObject;
    if-eqz v4, :cond_3

    const-string v31, "Id"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_4

    .line 1175
    :cond_3
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1181
    :cond_4
    const-string v31, "EarnDates"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 1182
    .local v25, "progRoot":Lorg/json/JSONObject;
    if-eqz v25, :cond_3

    .line 1185
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 1191
    .local v24, "prog":Lorg/json/JSONObject;
    const-string v31, "IsHidden"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v34, 0x7f08011b

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1194
    .local v30, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v34, 0x7f08011a

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1195
    .local v11, "description":Ljava/lang/String;
    const-string v27, "http://live.xbox.com/Content/Images/HiddenAchievement.png"

    .line 1204
    .local v27, "tileUrl":Ljava/lang/String;
    :goto_2
    new-instance v7, Landroid/content/ContentValues;

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1207
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v31, "GameId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1208
    const-string v31, "Title"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v31, "Description"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v31, "IconUrl"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v31, "Points"

    const-string v34, "Score"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    if-eqz v24, :cond_7

    .line 1216
    const-wide/16 v12, 0x0

    .line 1217
    .local v12, "earnedOn":J
    const-string v31, "IsOffline"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_5

    .line 1218
    const-string v31, "EarnedOn"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->parseTicks(Ljava/lang/String;)J

    move-result-wide v12

    .line 1220
    :cond_5
    const-string v31, "Acquired"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1221
    const-string v31, "Locked"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1230
    .end local v12    # "earnedOn":J
    :goto_3
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1199
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v11    # "description":Ljava/lang/String;
    .end local v27    # "tileUrl":Ljava/lang/String;
    .end local v30    # "title":Ljava/lang/String;
    :cond_6
    const-string v31, "Name"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1200
    .restart local v30    # "title":Ljava/lang/String;
    const-string v31, "Description"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1201
    .restart local v11    # "description":Ljava/lang/String;
    const-string v31, "TileUrl"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "tileUrl":Ljava/lang/String;
    goto/16 :goto_2

    .line 1226
    .restart local v7    # "cv":Landroid/content/ContentValues;
    :cond_7
    const-string v31, "Acquired"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1227
    const-string v31, "Locked"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1233
    .end local v4    # "achieve":Lorg/json/JSONObject;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v11    # "description":Ljava/lang/String;
    .end local v24    # "prog":Lorg/json/JSONObject;
    .end local v25    # "progRoot":Lorg/json/JSONObject;
    .end local v27    # "tileUrl":Ljava/lang/String;
    .end local v30    # "title":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 1234
    const-string v31, "New achievement parsing"

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v28

    .line 1236
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v9, v0, [Landroid/content/ContentValues;

    .line 1237
    .local v9, "cva":[Landroid/content/ContentValues;
    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1239
    sget-object v31, Lcom/akop/bach/XboxLive$Achievements;->CONTENT_URI:Landroid/net/Uri;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "GameId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1242
    sget-object v31, Lcom/akop/bach/XboxLive$Achievements;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1244
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v31

    if-eqz v31, :cond_a

    .line 1245
    const-string v31, "New achievement processing"

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v28

    .line 1248
    :cond_a
    const-string v31, "Game"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1249
    .local v14, "game":Lorg/json/JSONObject;
    if-eqz v14, :cond_c

    .line 1251
    new-instance v7, Landroid/content/ContentValues;

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1253
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v31, "LastUpdated"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1254
    const-string v31, "AchievementsStatus"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1255
    const-string v31, "AchievementsTotal"

    const-string v34, "PossibleAchievements"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    const-string v31, "PointsTotal"

    const-string v34, "PossibleScore"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    const-string v31, "Progress"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 1261
    .restart local v25    # "progRoot":Lorg/json/JSONObject;
    if-eqz v25, :cond_b

    .line 1263
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 1264
    .local v26, "progress":Lorg/json/JSONObject;
    if-eqz v26, :cond_b

    .line 1266
    const-string v31, "AchievementsUnlocked"

    const-string v34, "Achievements"

    const/16 v35, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1268
    const-string v31, "PointsAcquired"

    const-string v34, "Score"

    const/16 v35, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1270
    const-string v31, "LastPlayed"

    const-string v34, "LastPlayed"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->parseTicks(Ljava/lang/String;)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1276
    .end local v26    # "progress":Lorg/json/JSONObject;
    :cond_b
    sget-object v31, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "_id="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v6, v0, v7, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1279
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v25    # "progRoot":Lorg/json/JSONObject;
    :cond_c
    sget-object v31, Lcom/akop/bach/XboxLive$Achievements;->CONTENT_URI:Landroid/net/Uri;

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1281
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 1282
    const-string v31, "Updating Game"

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1283
    :cond_d
    return-void
.end method

.method private parseBlockMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 16
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "messageUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1866
    const-string v12, "https://live.xbox.com/%1$s/Messages?xr=socialtwistnav"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1869
    .local v10, "token":Ljava/lang/String;
    const-string v12, "https://live.xbox.com/%1$s/Messages/Block"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1872
    .local v11, "url":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v12, 0x3

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1875
    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v12, "msgID"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v4, v12, v13}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1878
    const-string v12, "__RequestVerificationToken"

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v12, v13}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1880
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v12}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v6

    .line 1882
    .local v6, "page":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1884
    .local v8, "started":J
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 1888
    .local v5, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "Success"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1890
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1891
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "XboxLiveParser/parseBlockMessage: Parser error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1893
    :cond_0
    new-instance v12, Lcom/akop/bach/parser/ParserException;

    const-string v13, "Status"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v15, 0x7f080133

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :catch_0
    move-exception v3

    .line 1899
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1901
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "XboxLiveParser/parseDeleteMessage: JSON error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1906
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1907
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v12, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "AccountId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1911
    .local v7, "rows":I
    if-lez v7, :cond_2

    .line 1912
    sget-object v12, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1914
    :cond_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1915
    const-string v12, "Message deletion processing"

    invoke-static {v12, v8, v9}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1916
    :cond_3
    return-void
.end method

.method private parseCompareAchievements(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedAchievementInfo;
    .locals 39
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .param p3, "gameUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1974
    .local v32, "started":J
    const-string v4, "https://live.xbox.com/%1$s/Activity/Details?compareTo=%3$s&titleId=%2$s"

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x1

    aput-object p3, v36, v37

    const/16 v37, 0x2

    const-string v38, "UTF-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 1978
    .local v27, "pageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1980
    .local v26, "page":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1981
    const-string v4, "Achievement compare page fetch"

    move-wide/from16 v0, v32

    invoke-static {v4, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v32

    .line 1984
    :cond_0
    sget-object v4, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_COMPARE_ACH_JSON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .local v21, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1985
    new-instance v4, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const v37, 0x7f08006a

    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v4, v0, v1, v2}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v4

    .line 1987
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v19

    .line 1988
    .local v19, "data":Lorg/json/JSONObject;
    const-string v4, "Players"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    .line 1990
    .local v28, "players":Lorg/json/JSONArray;
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ge v4, v0, :cond_2

    .line 1991
    new-instance v4, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const v37, 0x7f08006a

    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v4, v0, v1, v2}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v4

    .line 1993
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    .line 1994
    .local v31, "you":Lorg/json/JSONObject;
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 1996
    .local v22, "me":Lorg/json/JSONObject;
    const-string v4, "Gamertag"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1997
    .local v34, "yourGamertag":Ljava/lang/String;
    const-string v4, "Gamertag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1999
    .local v23, "myGamertag":Ljava/lang/String;
    new-instance v18, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;-><init>(Landroid/content/ContentResolver;)V

    .line 2001
    .local v18, "comparedAchieves":Lcom/akop/bach/XboxLive$ComparedAchievementInfo;
    const-string v4, "Gamerpic"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->yourAvatarIconUrl:Ljava/lang/String;

    .line 2002
    const-string v4, "Gamerpic"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->myAvatarIconUrl:Ljava/lang/String;

    .line 2004
    const-string v4, "Achievements"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 2005
    .local v17, "achieves":Lorg/json/JSONArray;
    const/16 v20, 0x0

    .local v20, "i":I
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v25

    .local v25, "n":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 2007
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 2009
    .local v16, "achieve":Lorg/json/JSONObject;
    if-eqz v16, :cond_3

    const-string v4, "Id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 2005
    :cond_3
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 2012
    :cond_4
    const-string v4, "EarnDates"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    .line 2013
    .local v29, "progRoot":Lorg/json/JSONObject;
    if-eqz v29, :cond_3

    .line 2016
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 2017
    .local v24, "myProg":Lorg/json/JSONObject;
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    .line 2021
    .local v35, "yourProg":Lorg/json/JSONObject;
    const-string v4, "Score"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 2022
    .local v8, "score":I
    const-string v4, "Id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2027
    .local v5, "uid":Ljava/lang/String;
    const-string v4, "IsHidden"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v36, 0x7f08011b

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2030
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v36, 0x7f08011a

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2031
    .local v7, "description":Ljava/lang/String;
    const-string v15, "http://live.xbox.com/Content/Images/HiddenAchievement.png"

    .line 2041
    .local v15, "iconUrl":Ljava/lang/String;
    :goto_2
    const-wide/16 v9, 0x0

    .line 2042
    .local v9, "myAcquired":J
    const/4 v11, 0x1

    .line 2046
    .local v11, "myIsLocked":I
    const/16 v30, 0x0

    .line 2048
    .local v30, "scoreEarned":I
    if-eqz v24, :cond_5

    .line 2050
    const/4 v11, 0x0

    .line 2051
    move/from16 v30, v8

    .line 2052
    const-string v4, "IsOffline"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2053
    const-string v4, "EarnedOn"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/akop/bach/parser/XboxLiveParser;->parseTicks(Ljava/lang/String;)J

    move-result-wide v9

    .line 2056
    :cond_5
    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->myGamerscore:I

    add-int v4, v4, v30

    move-object/from16 v0, v18

    iput v4, v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->myGamerscore:I

    .line 2060
    const/16 v30, 0x0

    .line 2061
    const-wide/16 v12, 0x0

    .line 2062
    .local v12, "yourAcquired":J
    const/4 v14, 0x1

    .line 2064
    .local v14, "yourIsLocked":I
    if-eqz v35, :cond_6

    .line 2066
    const/4 v14, 0x0

    .line 2067
    move/from16 v30, v8

    .line 2068
    const-string v4, "IsOffline"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2069
    const-string v4, "EarnedOn"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/akop/bach/parser/XboxLiveParser;->parseTicks(Ljava/lang/String;)J

    move-result-wide v12

    .line 2072
    :cond_6
    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->yourGamerscore:I

    add-int v4, v4, v30

    move-object/from16 v0, v18

    iput v4, v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->yourGamerscore:I

    .line 2073
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->cursor:Lcom/akop/bach/XboxLive$ComparedAchievementCursor;

    invoke-virtual/range {v4 .. v15}, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIJILjava/lang/String;)V

    goto/16 :goto_1

    .line 2035
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "myAcquired":J
    .end local v11    # "myIsLocked":I
    .end local v12    # "yourAcquired":J
    .end local v14    # "yourIsLocked":I
    .end local v15    # "iconUrl":Ljava/lang/String;
    .end local v30    # "scoreEarned":I
    :cond_7
    const-string v4, "Name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2036
    .restart local v6    # "title":Ljava/lang/String;
    const-string v4, "Description"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2037
    .restart local v7    # "description":Ljava/lang/String;
    const-string v4, "TileUrl"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "iconUrl":Ljava/lang/String;
    goto :goto_2

    .line 2078
    .end local v5    # "uid":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v8    # "score":I
    .end local v15    # "iconUrl":Ljava/lang/String;
    .end local v16    # "achieve":Lorg/json/JSONObject;
    .end local v24    # "myProg":Lorg/json/JSONObject;
    .end local v29    # "progRoot":Lorg/json/JSONObject;
    .end local v35    # "yourProg":Lorg/json/JSONObject;
    :cond_8
    return-object v18
.end method

.method private parseCompareGames(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedGameInfo;
    .locals 35
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 2086
    .local v28, "started":J
    const-string v4, "https://live.xbox.com/%1$s/Activity?compareTo=%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v14, v5, v13

    const/4 v13, 0x1

    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v13

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2090
    .local v30, "token":Ljava/lang/String;
    const-string v4, "https://live.xbox.com/%1$s/Activity/Summary?CompareTo=%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v14, v5, v13

    const/4 v13, 0x1

    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v13

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 2094
    .local v31, "url":Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2095
    .local v20, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v4, "__RequestVerificationToken"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-static {v0, v4, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2097
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v4}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v25

    .line 2098
    .local v25, "page":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 2100
    .local v16, "data":Lorg/json/JSONObject;
    if-nez v16, :cond_0

    .line 2101
    new-instance v4, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v13, 0x7f08006d

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-direct {v4, v5, v13, v14}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v4

    .line 2103
    :cond_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2104
    const-string v4, "Game compare page fetch"

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v28

    .line 2106
    :cond_1
    new-instance v15, Lcom/akop/bach/XboxLive$ComparedGameInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v15, v4}, Lcom/akop/bach/XboxLive$ComparedGameInfo;-><init>(Landroid/content/ContentResolver;)V

    .line 2107
    .local v15, "comparedGames":Lcom/akop/bach/XboxLive$ComparedGameInfo;
    const-string v4, "Players"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 2109
    .local v26, "players":Lorg/json/JSONArray;
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 2110
    new-instance v4, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v13, 0x7f08006d

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-direct {v4, v5, v13, v14}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v4

    .line 2112
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v32

    .line 2113
    .local v32, "you":Lorg/json/JSONObject;
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 2115
    .local v21, "me":Lorg/json/JSONObject;
    const-string v4, "Gamertag"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2116
    .local v33, "yourGamertag":Ljava/lang/String;
    const-string v4, "Gamertag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2118
    .local v22, "myGamertag":Ljava/lang/String;
    const-string v4, "Gamerpic"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/akop/bach/XboxLive$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    .line 2119
    const-string v4, "Gamerpic"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/akop/bach/XboxLive$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    .line 2120
    const-string v4, "Gamerscore"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/akop/bach/XboxLive$ComparedGameInfo;->yourGamerscore:I

    .line 2121
    const-string v4, "Gamerscore"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/akop/bach/XboxLive$ComparedGameInfo;->myGamerscore:I

    .line 2123
    const-string v4, "Games"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 2124
    .local v18, "games":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .local v19, "i":I
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v24

    .local v24, "n":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 2127
    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 2129
    .local v17, "game":Lorg/json/JSONObject;
    if-eqz v17, :cond_3

    const-string v4, "Id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "uid":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 2124
    .end local v6    # "uid":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 2132
    .restart local v6    # "uid":Ljava/lang/String;
    :cond_4
    const-string v4, "Progress"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 2133
    .local v27, "progRoot":Lorg/json/JSONObject;
    if-eqz v27, :cond_3

    .line 2136
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 2137
    .local v23, "myProg":Lorg/json/JSONObject;
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 2139
    .local v34, "yourProg":Lorg/json/JSONObject;
    if-eqz v23, :cond_3

    if-eqz v34, :cond_3

    .line 2142
    const-string v4, "PossibleAchievements"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 2143
    .local v9, "totalAch":I
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->isShowingApps()Z

    move-result v4

    if-nez v4, :cond_5

    if-lez v9, :cond_3

    .line 2145
    :cond_5
    const-string v4, "PossibleScore"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 2147
    .local v12, "totalScore":I
    const-string v4, "Achievements"

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 2148
    .local v7, "myAch":I
    const-string v4, "Score"

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 2150
    .local v10, "myScore":I
    const-string v4, "Achievements"

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 2151
    .local v8, "yourAch":I
    const-string v4, "Score"

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 2153
    .local v11, "yourScore":I
    iget-object v4, v15, Lcom/akop/bach/XboxLive$ComparedGameInfo;->cursor:Lcom/akop/bach/XboxLive$ComparedGameCursor;

    const-string v5, "Name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "BoxArt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v4 .. v14}, Lcom/akop/bach/XboxLive$ComparedGameCursor;->addItem(Ljava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2162
    .end local v6    # "uid":Ljava/lang/String;
    .end local v7    # "myAch":I
    .end local v8    # "yourAch":I
    .end local v9    # "totalAch":I
    .end local v10    # "myScore":I
    .end local v11    # "yourScore":I
    .end local v12    # "totalScore":I
    .end local v17    # "game":Lorg/json/JSONObject;
    .end local v23    # "myProg":Lorg/json/JSONObject;
    .end local v27    # "progRoot":Lorg/json/JSONObject;
    .end local v34    # "yourProg":Lorg/json/JSONObject;
    :cond_6
    return-object v15
.end method

.method private parseDeleteMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 16
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "messageUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1811
    const-string v12, "https://live.xbox.com/%1$s/Messages?xr=socialtwistnav"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1814
    .local v10, "token":Ljava/lang/String;
    const-string v12, "https://live.xbox.com/%1$s/Messages/Delete"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1817
    .local v11, "url":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v12, 0x3

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v12, "msgID"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v4, v12, v13}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1823
    const-string v12, "__RequestVerificationToken"

    invoke-static {v4, v12, v10}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1825
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v12}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v6

    .line 1827
    .local v6, "page":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1829
    .local v8, "started":J
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 1833
    .local v5, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "Success"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1835
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1836
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "XboxLiveParser/parseDeleteMessage: Parser error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1838
    :cond_0
    new-instance v12, Lcom/akop/bach/parser/ParserException;

    const-string v13, "Status"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v15, 0x7f0800b7

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    :catch_0
    move-exception v3

    .line 1844
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1846
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "XboxLiveParser/parseDeleteMessage: JSON error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1851
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1852
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v12, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "AccountId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1856
    .local v7, "rows":I
    if-lez v7, :cond_2

    .line 1857
    sget-object v12, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1859
    :cond_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1860
    const-string v12, "Message deletion processing"

    invoke-static {v12, v8, v9}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1861
    :cond_3
    return-void
.end method

.method private parseFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2170
    .local v4, "started":J
    const-string v8, "https://live.xbox.com/%1$s/Profile?gamertag=%2$s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "UTF-8"

    invoke-static {p3, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2174
    .local v6, "token":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2175
    .local v1, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v8, "gamertag"

    invoke-static {v1, v8, p3}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2176
    const-string v8, "__RequestVerificationToken"

    invoke-static {v1, v8, v6}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2178
    const-string v8, "https://live.xbox.com/%1$s/Friends/%2$s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2181
    .local v7, "url":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v1, v8}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 2183
    .local v3, "page":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2184
    const-string v8, "Friend manager page fetch"

    invoke-static {v8, v4, v5}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 2186
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, v3, v8}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 2190
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "Success"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2192
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XboxLiveParser/parseSendMessage: Parser error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 2195
    :cond_1
    new-instance v8, Lcom/akop/bach/parser/ParserException;

    iget-object v9, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v10, 0x7f080117

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2198
    :catch_0
    move-exception v0

    .line 2200
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2201
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2203
    :cond_2
    new-instance v8, Lcom/akop/bach/parser/ParserException;

    iget-object v9, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v10, 0x7f080070

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-direct {v8, v9, v10, v11}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v8

    .line 2208
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->parseFriends(Lcom/akop/bach/XboxLiveAccount;)V

    .line 2209
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z

    .line 2210
    return-void
.end method

.method private parseFriendSection(JLorg/json/JSONArray;JLjava/util/List;I)V
    .locals 27
    .param p1, "accountId"    # J
    .param p3, "friends"    # Lorg/json/JSONArray;
    .param p4, "updated"    # J
    .param p7, "statusHack"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/json/JSONArray;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1288
    .local p6, "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1289
    .local v4, "cr":Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    .line 1291
    .local v8, "queryParams":[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "i":I
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v20

    .local v20, "n":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 1293
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1294
    .local v13, "friend":Lorg/json/JSONObject;
    if-nez v13, :cond_1

    .line 1291
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1297
    :cond_1
    const-string v5, "GamerTag"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1298
    .local v18, "gamertag":Ljava/lang/String;
    const-string v5, "LargeGamerTileUrl"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1299
    .local v16, "gamerpic":Ljava/lang/String;
    const-string v5, "Presence"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1300
    .local v10, "activity":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1302
    .local v26, "titleName":Ljava/lang/String;
    const-string v5, "GamerScore"

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 1303
    .local v17, "gamerscore":I
    const-wide/16 v24, 0x0

    .line 1305
    .local v24, "titleId":J
    const-string v5, "TitleInfo"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 1306
    .local v23, "titleInfo":Lorg/json/JSONObject;
    if-eqz v23, :cond_2

    .line 1308
    const-string v5, "Id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 1309
    const/16 v26, 0x0

    .line 1311
    const-string v5, "Name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1312
    const-string v5, "Name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1315
    :cond_2
    const/16 v21, 0x63

    .line 1316
    .local v21, "statusCode":I
    if-gez p7, :cond_4

    .line 1318
    const-string v5, "IsOnline"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1319
    const/16 v21, 0x4

    .line 1328
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/akop/bach/XboxLive$Friends;->getStatusDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    .line 1331
    .local v22, "statusDescription":Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    const/16 v5, 0xf

    invoke-direct {v12, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1333
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v5, "DeleteMarker"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1334
    const-string v5, "Gamerscore"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1335
    const-string v5, "CurrentActivity"

    invoke-virtual {v12, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v5, "IconUrl"

    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string v5, "StatusCode"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    const-string v5, "StatusDescription"

    move-object/from16 v0, v22

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string v5, "TitleId"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1340
    const-string v5, "TitleName"

    move-object/from16 v0, v26

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const-string v5, "TitleUrl"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/akop/bach/parser/XboxLiveParser;->getBoxArt(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const/4 v5, 0x0

    aput-object v18, v8, v5

    .line 1345
    sget-object v5, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/akop/bach/parser/XboxLiveParser;->FRIENDS_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AccountId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " AND "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "Gamertag"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1353
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_5

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1356
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1358
    .local v14, "friendId":J
    sget-object v5, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v12, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    .end local v14    # "friendId":J
    :goto_3
    if-eqz v11, :cond_0

    .line 1374
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1321
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v22    # "statusDescription":Ljava/lang/String;
    :cond_3
    const/16 v21, 0x6

    goto/16 :goto_2

    .line 1325
    :cond_4
    move/from16 v21, p7

    goto/16 :goto_2

    .line 1364
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "cv":Landroid/content/ContentValues;
    .restart local v22    # "statusDescription":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v5, "Gamertag"

    move-object/from16 v0, v18

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v5, "AccountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1366
    const-string v5, "IsFavorite"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1373
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_6

    .line 1374
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 1377
    .end local v10    # "activity":Ljava/lang/String;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "friend":Lorg/json/JSONObject;
    .end local v16    # "gamerpic":Ljava/lang/String;
    .end local v17    # "gamerscore":I
    .end local v18    # "gamertag":Ljava/lang/String;
    .end local v21    # "statusCode":I
    .end local v22    # "statusDescription":Ljava/lang/String;
    .end local v23    # "titleInfo":Lorg/json/JSONObject;
    .end local v24    # "titleId":J
    .end local v26    # "titleName":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private parseFriends(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 24
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1383
    .local v18, "started":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1384
    .local v8, "updated":J
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v5

    .line 1386
    .local v5, "accountId":J
    const-class v21, Lcom/akop/bach/parser/XboxLiveParser;

    monitor-enter v21

    .line 1388
    :try_start_0
    const-string v4, "https://live.xbox.com/%1$s/Home?xr=socialtwistnav"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v7, v11

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1391
    .local v17, "token":Ljava/lang/String;
    const-string v4, "https://live.xbox.com/%1$s/Friends/List"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v7, v11

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 1394
    .local v20, "url":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1395
    .local v15, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v4, "__RequestVerificationToken"

    move-object/from16 v0, v17

    invoke-static {v15, v4, v0}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1397
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15, v4}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v16

    .line 1398
    .local v16, "page":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1400
    .local v14, "data":Lorg/json/JSONObject;
    if-nez v14, :cond_0

    .line 1401
    new-instance v4, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v11, 0x7f08006c

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v7, v11, v0}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v4

    .line 1435
    .end local v14    # "data":Lorg/json/JSONObject;
    .end local v15    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "page":Ljava/lang/String;
    .end local v17    # "token":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1403
    .restart local v14    # "data":Lorg/json/JSONObject;
    .restart local v15    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16    # "page":Ljava/lang/String;
    .restart local v17    # "token":Ljava/lang/String;
    .restart local v20    # "url":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1404
    .local v12, "cr":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1406
    .local v10, "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v4, "Friends"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v11, -0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/akop/bach/parser/XboxLiveParser;->parseFriendSection(JLorg/json/JSONArray;JLjava/util/List;I)V

    .line 1408
    const-string v4, "Incoming"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v11, 0x2

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/akop/bach/parser/XboxLiveParser;->parseFriendSection(JLorg/json/JSONArray;JLjava/util/List;I)V

    .line 1410
    const-string v4, "Outgoing"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v11, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/akop/bach/parser/XboxLiveParser;->parseFriendSection(JLorg/json/JSONArray;JLjava/util/List;I)V

    .line 1414
    sget-object v4, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeleteMarker!="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " AND "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "AccountId"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v12, v4, v7, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1417
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1419
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    new-array v13, v4, [Landroid/content/ContentValues;

    .line 1420
    .local v13, "cvs":[Landroid/content/ContentValues;
    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1422
    sget-object v4, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v4, v13}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1424
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1425
    const-string v4, "Friend page insertion"

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1428
    .end local v13    # "cvs":[Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 1429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/XboxLiveAccount;->setLastFriendUpdate(J)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/akop/bach/XboxLiveAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 1434
    sget-object v4, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v12, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1435
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1437
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1438
    const-string v4, "Friend page processing"

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1439
    :cond_2
    return-void
.end method

.method private parseFriendsOfFriend(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$FriendsOfFriend;
    .locals 37
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "friendGamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1500
    .local v32, "started":J
    new-instance v25, Lcom/akop/bach/XboxLive$FriendsOfFriend;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/akop/bach/XboxLive$FriendsOfFriend;-><init>(Landroid/content/ContentResolver;)V

    .line 1502
    .local v25, "list":Lcom/akop/bach/XboxLive$FriendsOfFriend;
    const-string v5, "https://live.xbox.com/%1$s/Home?xr=socialtwistnav"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1505
    .local v35, "token":Ljava/lang/String;
    const-string v5, "https://live.xbox.com/%1$s/Friends/List"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 1508
    .local v36, "url":Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    const/4 v5, 0x3

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1511
    .local v21, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v5, "__RequestVerificationToken"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-static {v0, v5, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1512
    const-string v5, "gamertag"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1514
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v30

    .line 1515
    .local v30, "page":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 1516
    .local v24, "json":Lorg/json/JSONObject;
    if-nez v24, :cond_1

    .line 1594
    :cond_0
    return-object v25

    .line 1519
    :cond_1
    const-string v5, "Friends"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 1520
    .local v16, "friends":Lorg/json/JSONArray;
    if-eqz v16, :cond_0

    .line 1523
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    .local v31, "shared":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/parser/XboxLiveParser$Gamer;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    .local v29, "notYet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/parser/XboxLiveParser$Gamer;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v28

    .local v28, "n":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 1529
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 1531
    .local v15, "friend":Lorg/json/JSONObject;
    if-eqz v15, :cond_2

    const-string v5, "GamerTag"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "gamertag":Ljava/lang/String;
    if-nez v18, :cond_3

    .line 1526
    .end local v18    # "gamertag":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1534
    .restart local v18    # "gamertag":Ljava/lang/String;
    :cond_3
    const-string v5, "LastSeen"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/akop/bach/parser/XboxLiveParser;->parseTicks(Ljava/lang/String;)J

    move-result-wide v26

    .line 1536
    .local v26, "lastSeen":J
    new-instance v17, Lcom/akop/bach/parser/XboxLiveParser$Gamer;

    invoke-direct/range {v17 .. v17}, Lcom/akop/bach/parser/XboxLiveParser$Gamer;-><init>()V

    .line 1538
    .local v17, "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamertag:Ljava/lang/String;

    .line 1539
    const-string v5, "GamerScore"

    const/4 v8, 0x0

    invoke-virtual {v15, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v17

    iput v5, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamerscore:I

    .line 1540
    const-string v5, "LargeGamerTileUrl"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IconUrl:Ljava/lang/String;

    .line 1542
    const-string v5, "TitleInfo"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 1543
    .local v34, "titleInfo":Lorg/json/JSONObject;
    if-eqz v34, :cond_4

    .line 1545
    const-string v5, "Id"

    const/4 v8, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v8, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v5}, Lcom/akop/bach/parser/XboxLiveParser;->getBoxArt(JZ)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleIconUrl:Ljava/lang/String;

    .line 1547
    const-string v5, "Id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 1549
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v8, 0x7f0800ee

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->CurrentActivity:Ljava/lang/String;

    .line 1559
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/akop/bach/XboxLive$Friends;->isFriend(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v17

    iput-boolean v5, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IsFriend:Z

    .line 1561
    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IsFriend:Z

    if-eqz v5, :cond_6

    .line 1562
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1553
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v8, 0x7f0800ad

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v11

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Name"

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->CurrentActivity:Ljava/lang/String;

    goto :goto_2

    .line 1564
    :cond_6
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1567
    .end local v15    # "friend":Lorg/json/JSONObject;
    .end local v17    # "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    .end local v18    # "gamertag":Ljava/lang/String;
    .end local v26    # "lastSeen":J
    .end local v34    # "titleInfo":Lorg/json/JSONObject;
    :cond_7
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1568
    const-string v5, "Friends of friend page loading"

    move-wide/from16 v0, v32

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v32

    .line 1570
    :cond_8
    new-instance v4, Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;

    invoke-direct {v4}, Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;-><init>()V

    .line 1572
    .local v4, "cmp":Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;
    move-object/from16 v0, v31

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1573
    move-object/from16 v0, v29

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1575
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1576
    const-string v5, "Friends of friend page sorting"

    move-wide/from16 v0, v32

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v32

    .line 1578
    :cond_9
    const-wide/16 v6, 0x0

    .line 1580
    .local v6, "id":J
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/akop/bach/parser/XboxLiveParser$Gamer;

    .line 1582
    .restart local v17    # "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/akop/bach/XboxLive$FriendsOfFriend;->SharedFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    const-wide/16 v8, 0x1

    add-long v22, v6, v8

    .end local v6    # "id":J
    .local v22, "id":J
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamertag:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->CurrentActivity:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IconUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleIconUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleId:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v13, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamerscore:I

    move-object/from16 v0, v17

    iget-boolean v14, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IsFriend:Z

    invoke-virtual/range {v5 .. v14}, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;->addItem(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-wide/from16 v6, v22

    .line 1585
    .end local v22    # "id":J
    .restart local v6    # "id":J
    goto :goto_3

    .line 1587
    .end local v17    # "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    :cond_a
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/akop/bach/parser/XboxLiveParser$Gamer;

    .line 1589
    .restart local v17    # "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/akop/bach/XboxLive$FriendsOfFriend;->NotYetFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    const-wide/16 v8, 0x1

    add-long v22, v6, v8

    .end local v6    # "id":J
    .restart local v22    # "id":J
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamertag:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->CurrentActivity:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IconUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleIconUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleId:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v13, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamerscore:I

    move-object/from16 v0, v17

    iget-boolean v14, v0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IsFriend:Z

    invoke-virtual/range {v5 .. v14}, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;->addItem(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-wide/from16 v6, v22

    .line 1592
    .end local v22    # "id":J
    .restart local v6    # "id":J
    goto :goto_4
.end method

.method private parseGameOverview(Ljava/lang/String;)Lcom/akop/bach/XboxLive$GameOverviewInfo;
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2215
    move-object/from16 v5, p1

    .line 2217
    .local v5, "loadUrl":Ljava/lang/String;
    sget-object v12, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_REDIRECTING_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/akop/bach/parser/XboxLiveParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    .line 2225
    .local v8, "p":Lorg/apache/http/params/HttpParams;
    :try_start_0
    const-string v12, "http.protocol.max-redirects"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2227
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2228
    .local v4, "httpget":Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 2229
    .local v1, "context":Lorg/apache/http/protocol/HttpContext;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/akop/bach/parser/XboxLiveParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v12, v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 2231
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 2232
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_0

    .line 2233
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2235
    :cond_0
    const-string v12, "http.request"

    invoke-interface {v1, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    .local v10, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    new-instance v12, Ljava/net/URI;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 2248
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2249
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Redirection URL determined to be "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2253
    :cond_2
    const-string v12, "http.protocol.max-redirects"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2257
    .end local v1    # "context":Lorg/apache/http/protocol/HttpContext;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "p":Lorg/apache/http/params/HttpParams;
    .end local v10    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    const-string v12, "?NoSplash=1"

    invoke-virtual {v5, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2259
    .local v9, "page":Ljava/lang/String;
    new-instance v7, Lcom/akop/bach/XboxLive$GameOverviewInfo;

    invoke-direct {v7}, Lcom/akop/bach/XboxLive$GameOverviewInfo;-><init>()V

    .line 2262
    .local v7, "overview":Lcom/akop/bach/XboxLive$GameOverviewInfo;
    sget-object v12, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_TITLE:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_4

    .line 2263
    new-instance v12, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v14, 0x7f080074

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-direct {v12, v13, v14, v15}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v12

    .line 2242
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "overview":Lcom/akop/bach/XboxLive$GameOverviewInfo;
    .end local v9    # "page":Ljava/lang/String;
    .restart local v1    # "context":Lorg/apache/http/protocol/HttpContext;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "p":Lorg/apache/http/params/HttpParams;
    .restart local v10    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 2244
    .local v2, "e":Ljava/net/URISyntaxException;
    :try_start_3
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2245
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2253
    .end local v1    # "context":Lorg/apache/http/protocol/HttpContext;
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v12

    const-string v13, "http.protocol.max-redirects"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    throw v12

    .line 2265
    .end local v8    # "p":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    .restart local v7    # "overview":Lcom/akop/bach/XboxLive$GameOverviewInfo;
    .restart local v9    # "page":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/akop/bach/parser/XboxLiveParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Title:Ljava/lang/String;

    .line 2266
    sget-object v12, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_DESCRIPTION:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2267
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/akop/bach/parser/XboxLiveParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Description:Ljava/lang/String;

    .line 2269
    :cond_5
    sget-object v12, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_MANUAL:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2270
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/akop/bach/XboxLive$GameOverviewInfo;->ManualUrl:Ljava/lang/String;

    .line 2272
    :cond_6
    sget-object v12, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_ESRB:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2274
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/akop/bach/parser/XboxLiveParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingDescription:Ljava/lang/String;

    .line 2275
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingIconUrl:Ljava/lang/String;

    .line 2278
    :cond_7
    sget-object v12, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_BANNER:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2279
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/akop/bach/XboxLive$GameOverviewInfo;->BannerUrl:Ljava/lang/String;

    .line 2281
    :cond_8
    sget-object v12, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_GAME_OVERVIEW_IMAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 2282
    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2283
    iget-object v12, v7, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Screenshots:Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2285
    :cond_9
    return-object v7
.end method

.method private parseGames(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 62
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    .line 911
    .local v52, "started":J
    const-string v5, "https://live.xbox.com/%1$s/Activity?xr=socialtwistnav"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 912
    .local v56, "token":Ljava/lang/String;
    const-string v5, "https://live.xbox.com/%1$s/Beacons/JumpInList"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    .line 914
    .local v60, "url":Ljava/lang/String;
    new-instance v40, Ljava/util/ArrayList;

    const/4 v5, 0x3

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 915
    .local v40, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v5, "__RequestVerificationToken"

    move-object/from16 v0, v40

    move-object/from16 v1, v56

    invoke-static {v0, v5, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 918
    const/16 v21, 0x0

    .line 922
    .local v21, "activities":Lorg/json/JSONArray;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonArray(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 932
    :cond_0
    :goto_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 933
    const-string v5, "Beacon page fetch"

    move-wide/from16 v0, v52

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v52

    .line 935
    :cond_1
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 936
    .local v24, "beaconMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    if-eqz v21, :cond_3

    .line 938
    const/16 v39, 0x0

    .local v39, "i":I
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v41

    .local v41, "n":I
    :goto_1
    move/from16 v0, v39

    move/from16 v1, v41

    if-ge v0, v1, :cond_3

    .line 940
    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 941
    .local v22, "activity":Lorg/json/JSONObject;
    if-eqz v22, :cond_2

    .line 943
    const-string v5, "titleId"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 944
    .local v55, "titleId":Ljava/lang/String;
    if-eqz v55, :cond_2

    .line 945
    const-string v5, "beacon"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, v24

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .end local v55    # "titleId":Ljava/lang/String;
    :cond_2
    add-int/lit8 v39, v39, 0x1

    goto :goto_1

    .line 924
    .end local v22    # "activity":Lorg/json/JSONObject;
    .end local v24    # "beaconMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .end local v39    # "i":I
    .end local v41    # "n":I
    :catch_0
    move-exception v31

    .line 926
    .local v31, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 927
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 950
    .end local v31    # "ex":Ljava/lang/Exception;
    .restart local v24    # "beaconMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    :cond_3
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 951
    const-string v5, "Beacon page mapping"

    move-wide/from16 v0, v52

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v52

    .line 953
    :cond_4
    const-string v5, "https://live.xbox.com/%1$s/Activity/Summary"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    .line 955
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v5}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v47

    .line 956
    .local v47, "page":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    .line 958
    .local v30, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 959
    const-string v5, "Game page fetch"

    move-wide/from16 v0, v52

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v52

    .line 961
    :cond_5
    if-nez v30, :cond_6

    .line 962
    new-instance v5, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v7, 0x7f08006d

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v9}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v5

    .line 964
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v16

    .line 965
    .local v16, "accountId":J
    new-instance v61, Ljava/util/ArrayList;

    const/16 v5, 0x32

    move-object/from16 v0, v61

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 966
    .local v61, "zeroGames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    .line 967
    .local v8, "queryParams":[Ljava/lang/String;
    const/16 v51, 0x0

    .line 968
    .local v51, "rowNo":I
    const/16 v27, 0x0

    .line 971
    .local v27, "changed":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    .line 972
    .local v58, "updated":J
    new-instance v46, Ljava/util/ArrayList;

    const/16 v5, 0x64

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 973
    .local v46, "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 975
    .local v4, "cr":Landroid/content/ContentResolver;
    const-string v5, "Games"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v36

    .line 976
    .local v36, "games":Lorg/json/JSONArray;
    const/16 v39, 0x0

    .restart local v39    # "i":I
    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONArray;->length()I

    move-result v41

    .restart local v41    # "n":I
    :goto_2
    move/from16 v0, v39

    move/from16 v1, v41

    if-ge v0, v1, :cond_15

    .line 978
    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v32

    .line 981
    .local v32, "game":Lorg/json/JSONObject;
    if-eqz v32, :cond_7

    const-string v5, "Id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .local v57, "uid":Ljava/lang/String;
    if-nez v57, :cond_8

    .line 976
    .end local v57    # "uid":Ljava/lang/String;
    :cond_7
    :goto_3
    add-int/lit8 v39, v39, 0x1

    goto :goto_2

    .line 984
    .restart local v57    # "uid":Ljava/lang/String;
    :cond_8
    const-string v5, "Progress"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v48

    .line 985
    .local v48, "progRoot":Lorg/json/JSONObject;
    if-eqz v48, :cond_7

    .line 988
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v49

    .line 989
    .local v49, "progress":Lorg/json/JSONObject;
    if-eqz v49, :cond_7

    .line 992
    const/16 v23, 0x0

    .line 993
    .local v23, "beacon":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 994
    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "beacon":Lorg/json/JSONObject;
    check-cast v23, Lorg/json/JSONObject;

    .line 996
    .restart local v23    # "beacon":Lorg/json/JSONObject;
    :cond_9
    add-int/lit8 v51, v51, 0x1

    .line 998
    const-string v5, "LastPlayed"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/akop/bach/parser/XboxLiveParser;->parseTicks(Ljava/lang/String;)J

    move-result-wide v42

    .line 999
    .local v42, "lastPlayedTicks":J
    const-string v5, "Achievements"

    const/4 v6, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 1000
    .local v19, "achUnlocked":I
    const-string v5, "PossibleAchievements"

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 1001
    .local v15, "achTotal":I
    const-string v5, "Score"

    const/4 v6, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v37

    .line 1002
    .local v37, "gpAcquired":I
    const-string v5, "PossibleScore"

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    .line 1004
    .local v38, "gpTotal":I
    const/4 v5, 0x1

    if-ge v15, v5, :cond_a

    .line 1005
    move-object/from16 v0, v61

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    :cond_a
    const/4 v5, 0x0

    aput-object v57, v8, v5

    .line 1009
    sget-object v5, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/akop/bach/parser/XboxLiveParser;->GAMES_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AccountId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    move-result-object v26

    .line 1015
    .local v26, "c":Landroid/database/Cursor;
    if-eqz v26, :cond_b

    :try_start_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1017
    :cond_b
    const-string v5, "Url"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1018
    .local v33, "gameUrl":Ljava/lang/String;
    const-string v5, "Name"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1019
    .local v54, "title":Ljava/lang/String;
    const-string v5, "BoxArt"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1021
    .local v25, "boxartUrl":Ljava/lang/String;
    new-instance v28, Landroid/content/ContentValues;

    const/16 v5, 0xf

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1022
    .local v28, "cv":Landroid/content/ContentValues;
    const-string v5, "AccountId"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1023
    const-string v5, "Title"

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v5, "Uid"

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v5, "BoxartUrl"

    invoke-static/range {v25 .. v25}, Lcom/akop/bach/parser/XboxLiveParser;->getStandardIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v5, "LastPlayed"

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1027
    const-string v5, "LastUpdated"

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1028
    const-string v5, "AchievementsUnlocked"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    const-string v5, "AchievementsTotal"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    const-string v5, "PointsAcquired"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    const-string v5, "PointsTotal"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    const-string v5, "GameUrl"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v5, "ListIndex"

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1035
    if-eqz v23, :cond_c

    .line 1037
    const-string v5, "BeaconSet"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    const-string v5, "BeaconText"

    const-string v6, "text"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_c
    const-string v6, "AchievementsStatus"

    if-lez v15, :cond_d

    const/4 v5, 0x1

    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1044
    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1091
    .end local v25    # "boxartUrl":Ljava/lang/String;
    .end local v33    # "gameUrl":Ljava/lang/String;
    .end local v54    # "title":Ljava/lang/String;
    :goto_5
    if-eqz v26, :cond_7

    .line 1092
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1042
    .restart local v25    # "boxartUrl":Ljava/lang/String;
    .restart local v33    # "gameUrl":Ljava/lang/String;
    .restart local v54    # "title":Ljava/lang/String;
    :cond_d
    const/4 v5, 0x0

    goto :goto_4

    .line 1048
    .end local v25    # "boxartUrl":Ljava/lang/String;
    .end local v28    # "cv":Landroid/content/ContentValues;
    .end local v33    # "gameUrl":Ljava/lang/String;
    .end local v54    # "title":Ljava/lang/String;
    :cond_e
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 1049
    .local v34, "gameId":J
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 1050
    .local v44, "lastPlayedTicksRec":J
    const/4 v5, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1051
    .local v20, "achUnlockedRec":I
    const/4 v5, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1053
    .local v18, "achTotalRec":I
    new-instance v28, Landroid/content/ContentValues;

    const/16 v5, 0xf

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1055
    .restart local v28    # "cv":Landroid/content/ContentValues;
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move/from16 v0, v18

    if-eq v0, v15, :cond_12

    :cond_f
    const/16 v50, 0x1

    .line 1058
    .local v50, "refreshAchievements":Z
    :goto_6
    if-eqz v50, :cond_10

    .line 1060
    const-string v5, "AchievementsUnlocked"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1061
    const-string v5, "AchievementsTotal"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1062
    const-string v5, "PointsAcquired"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1063
    const-string v5, "PointsTotal"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1064
    const-string v5, "AchievementsStatus"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    :cond_10
    if-eqz v23, :cond_13

    .line 1069
    const-string v5, "BeaconSet"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    const-string v5, "BeaconText"

    const-string v6, "text"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :goto_7
    cmp-long v5, v42, v44

    if-eqz v5, :cond_11

    .line 1079
    const-string v5, "LastPlayed"

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1081
    :cond_11
    const-string v5, "ListIndex"

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const-string v5, "LastUpdated"

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1083
    sget-object v5, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1086
    const/16 v27, 0x1

    goto/16 :goto_5

    .line 1055
    .end local v50    # "refreshAchievements":Z
    :cond_12
    const/16 v50, 0x0

    goto/16 :goto_6

    .line 1074
    .restart local v50    # "refreshAchievements":Z
    :cond_13
    const-string v5, "BeaconSet"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    const-string v6, "BeaconText"

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 1091
    .end local v18    # "achTotalRec":I
    .end local v20    # "achUnlockedRec":I
    .end local v28    # "cv":Landroid/content/ContentValues;
    .end local v34    # "gameId":J
    .end local v44    # "lastPlayedTicksRec":J
    .end local v50    # "refreshAchievements":Z
    :catchall_0
    move-exception v5

    if-eqz v26, :cond_14

    .line 1092
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v5

    .line 1097
    .end local v15    # "achTotal":I
    .end local v19    # "achUnlocked":I
    .end local v23    # "beacon":Lorg/json/JSONObject;
    .end local v26    # "c":Landroid/database/Cursor;
    .end local v32    # "game":Lorg/json/JSONObject;
    .end local v37    # "gpAcquired":I
    .end local v38    # "gpTotal":I
    .end local v42    # "lastPlayedTicks":J
    .end local v48    # "progRoot":Lorg/json/JSONObject;
    .end local v49    # "progress":Lorg/json/JSONObject;
    .end local v57    # "uid":Ljava/lang/String;
    :cond_15
    sget-object v10, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lcom/akop/bach/parser/XboxLiveParser;->GAMES_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AchievementsUnlocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1101
    .restart local v26    # "c":Landroid/database/Cursor;
    if-eqz v26, :cond_18

    .line 1103
    :cond_16
    :goto_8
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1105
    const/4 v5, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 1108
    sget-object v5, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1110
    const/16 v27, 0x1

    goto :goto_8

    .line 1114
    :cond_17
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1117
    :cond_18
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1118
    const-string v5, "Game page processing"

    move-wide/from16 v0, v52

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v52

    .line 1120
    :cond_19
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1a

    .line 1122
    const/16 v27, 0x1

    .line 1124
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ContentValues;

    move-object/from16 v29, v0

    .line 1125
    .local v29, "cvs":[Landroid/content/ContentValues;
    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1127
    sget-object v5, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1129
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1130
    const-string v5, "Game page insertion"

    move-wide/from16 v0, v52

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1133
    .end local v29    # "cvs":[Landroid/content/ContentValues;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 1134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/akop/bach/XboxLiveAccount;->setLastGameUpdate(J)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/akop/bach/XboxLiveAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 1137
    if-eqz v27, :cond_1b

    .line 1138
    sget-object v5, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1139
    :cond_1b
    return-void
.end method

.method private parseGetBeacons(Ljava/lang/String;Ljava/lang/String;)[Landroid/content/ContentValues;
    .locals 20
    .param p1, "gamertag"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 565
    .local v12, "started":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 566
    .local v5, "cr":Landroid/content/ContentResolver;
    const-string v16, "https://live.xbox.com/%1$s/Beacons/JumpInList"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 569
    .local v15, "url":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    .local v10, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v16, "__RequestVerificationToken"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    if-eqz p1, :cond_0

    .line 573
    const-string v16, "gamertag"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonArray(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    .line 577
    .local v2, "activities":Lorg/json/JSONArray;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 578
    const-string v16, "Beacon page fetch"

    move-object/from16 v0, v16

    invoke-static {v0, v12, v13}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v12

    .line 580
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_6

    .line 583
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    .local v11, "n":I
    :goto_0
    if-ge v9, v11, :cond_5

    .line 585
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 589
    .local v3, "activity":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    const-string v16, "titleId"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "titleId":Ljava/lang/String;
    if-eqz v14, :cond_2

    const-string v16, "beacon"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .local v4, "beacon":Lorg/json/JSONObject;
    if-nez v4, :cond_3

    .line 583
    .end local v4    # "beacon":Lorg/json/JSONObject;
    .end local v14    # "titleId":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 596
    .restart local v4    # "beacon":Lorg/json/JSONObject;
    .restart local v14    # "titleId":Ljava/lang/String;
    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v16, "TitleId"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v16, "TitleName"

    const-string v17, "titleName"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v16, "TitleBoxart"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getBoxArt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v17, "Text"

    const-string v16, "text"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 600
    :cond_4
    const-string v16, "text"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 606
    .end local v3    # "activity":Lorg/json/JSONObject;
    .end local v4    # "beacon":Lorg/json/JSONObject;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v14    # "titleId":Ljava/lang/String;
    :cond_5
    sget-object v16, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 609
    .end local v9    # "i":I
    .end local v11    # "n":I
    :cond_6
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 610
    const-string v16, "Beacon data collection"

    move-object/from16 v0, v16

    invoke-static {v0, v12, v13}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v12

    .line 612
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v7, v0, [Landroid/content/ContentValues;

    .line 613
    .local v7, "cvArray":[Landroid/content/ContentValues;
    invoke-interface {v8, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 615
    return-object v7
.end method

.method private parseMessages(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 37
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1685
    .local v30, "started":J
    const-string v5, "https://live.xbox.com/%1$s/Messages?xr=socialtwistnav"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1688
    .local v27, "token":Ljava/lang/String;
    const-string v5, "https://live.xbox.com/%1$s/Messages/GetMessages"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 1691
    .local v36, "url":Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1692
    .local v19, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v5, "__RequestVerificationToken"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v5, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1694
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v5}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v25

    .line 1695
    .local v25, "page":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 1697
    .local v15, "data":Lorg/json/JSONObject;
    if-nez v15, :cond_0

    .line 1698
    new-instance v5, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v8, 0x7f080072

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {v5, v7, v8, v9}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v5

    .line 1700
    :cond_0
    const-string v5, "Messages"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 1702
    .local v22, "messages":Lorg/json/JSONArray;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1703
    const-string v5, "Message page fetch"

    move-wide/from16 v0, v30

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v30

    .line 1705
    :cond_1
    move-wide/from16 v34, v30

    .line 1706
    .local v34, "updated":J
    const/4 v12, 0x0

    .line 1708
    .local v12, "changed":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1711
    .local v4, "cr":Landroid/content/ContentResolver;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v24, "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "IsRead"

    aput-object v7, v6, v5

    .line 1714
    .local v6, "columns":[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "i":I
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v23

    .local v23, "n":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 1716
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 1718
    .local v21, "message":Lorg/json/JSONObject;
    if-eqz v21, :cond_2

    const-string v5, "Id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .local v33, "uid":Ljava/lang/String;
    if-nez v33, :cond_3

    .line 1714
    .end local v33    # "uid":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1721
    .restart local v33    # "uid":Ljava/lang/String;
    :cond_3
    const-string v5, "HasBeenRead"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v20, 0x1

    .line 1723
    .local v20, "isRead":I
    :goto_2
    sget-object v5, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AccountId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Uid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1729
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_5

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1731
    const-string v5, "GamerPic"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1734
    .local v17, "gamerpic":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v5, 0x5

    invoke-direct {v13, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1735
    .local v13, "cv":Landroid/content/ContentValues;
    const-string v5, "IsRead"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1736
    const-string v5, "DeleteMarker"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1737
    const-string v5, "Gamerpic"

    move-object/from16 v0, v17

    invoke-virtual {v13, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const/4 v12, 0x1

    .line 1740
    sget-object v5, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v13, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    :goto_3
    if-eqz v11, :cond_2

    .line 1776
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1721
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v17    # "gamerpic":Ljava/lang/String;
    .end local v20    # "isRead":I
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1745
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v20    # "isRead":I
    :cond_5
    :try_start_1
    const-string v5, "SentTime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/akop/bach/parser/XboxLiveParser;->parseTicks(Ljava/lang/String;)J

    move-result-wide v28

    .line 1747
    .local v28, "sent":J
    const-string v5, "Excerpt"

    const-string v7, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1748
    .local v10, "body":Ljava/lang/String;
    const-string v5, "From"

    const-string v7, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1749
    .local v26, "sender":Ljava/lang/String;
    const-string v5, "GamerPic"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1751
    .restart local v17    # "gamerpic":Ljava/lang/String;
    const/16 v32, 0x1

    .line 1752
    .local v32, "type":I
    const-string v5, "HasImage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1753
    const/16 v32, 0x0

    .line 1754
    :cond_6
    const-string v5, "HasVoice"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1755
    const/16 v32, 0x2

    .line 1758
    :cond_7
    new-instance v13, Landroid/content/ContentValues;

    const/16 v5, 0xa

    invoke-direct {v13, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1759
    .restart local v13    # "cv":Landroid/content/ContentValues;
    const-string v5, "AccountId"

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1760
    const-string v5, "Sender"

    move-object/from16 v0, v26

    invoke-virtual {v13, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v5, "Gamerpic"

    move-object/from16 v0, v17

    invoke-virtual {v13, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v5, "Uid"

    move-object/from16 v0, v33

    invoke-virtual {v13, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v5, "IsRead"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1764
    const-string v5, "IsDirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1765
    const-string v5, "MessageType"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1766
    const-string v5, "Sent"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1767
    const-string v5, "DeleteMarker"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1768
    const-string v5, "Body"

    invoke-static {v10}, Lcom/akop/bach/parser/XboxLiveParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1775
    .end local v10    # "body":Ljava/lang/String;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v17    # "gamerpic":Ljava/lang/String;
    .end local v26    # "sender":Ljava/lang/String;
    .end local v28    # "sent":J
    .end local v32    # "type":I
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_8

    .line 1776
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 1780
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v20    # "isRead":I
    .end local v21    # "message":Lorg/json/JSONObject;
    .end local v33    # "uid":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1781
    const-string v5, "Message list processing"

    move-wide/from16 v0, v30

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v30

    .line 1783
    :cond_a
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1785
    const/4 v12, 0x1

    .line 1787
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    new-array v14, v5, [Landroid/content/ContentValues;

    .line 1788
    .local v14, "cvs":[Landroid/content/ContentValues;
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1790
    sget-object v5, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v14}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1792
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1793
    const-string v5, "Message list insertion"

    move-wide/from16 v0, v30

    invoke-static {v5, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1796
    .end local v14    # "cvs":[Landroid/content/ContentValues;
    :cond_b
    sget-object v5, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeleteMarker!="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AccountId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1800
    .local v16, "deleted":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 1801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/akop/bach/XboxLiveAccount;->setLastMessageUpdate(J)V

    .line 1802
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/akop/bach/XboxLiveAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 1804
    if-nez v12, :cond_c

    if-lez v16, :cond_d

    .line 1805
    :cond_c
    sget-object v5, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1806
    :cond_d
    return-void
.end method

.method private parseRecentPlayers(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/XboxLive$RecentPlayers;
    .locals 28
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1601
    .local v24, "started":J
    new-instance v18, Lcom/akop/bach/XboxLive$RecentPlayers;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/akop/bach/XboxLive$RecentPlayers;-><init>(Landroid/content/ContentResolver;)V

    .line 1603
    .local v18, "list":Lcom/akop/bach/XboxLive$RecentPlayers;
    const-string v2, "https://live.xbox.com/%1$s/Home?xr=socialtwistnav"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1606
    .local v26, "token":Ljava/lang/String;
    const-string v2, "https://live.xbox.com/%1$s/Friends/Recent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 1609
    .local v27, "url":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1612
    .local v15, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v2, "__RequestVerificationToken"

    move-object/from16 v0, v26

    invoke-static {v15, v2, v0}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1614
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v15}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonArray(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v22

    .line 1616
    .local v22, "players":Lorg/json/JSONArray;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1617
    const-string v2, "Player list page fetch"

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v24

    .line 1619
    :cond_0
    if-nez v22, :cond_1

    .line 1620
    new-instance v2, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v4, 0x7f080078

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v2

    .line 1622
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1624
    .local v20, "notYet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/parser/XboxLiveParser$Gamer;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v19

    .local v19, "n":I
    :goto_0
    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    .line 1627
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 1629
    .local v21, "player":Lorg/json/JSONObject;
    if-eqz v21, :cond_2

    const-string v2, "GamerTag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "gamertag":Ljava/lang/String;
    if-nez v12, :cond_3

    .line 1624
    .end local v12    # "gamertag":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1632
    .restart local v12    # "gamertag":Ljava/lang/String;
    :cond_3
    const-string v2, "LastSeen"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/akop/bach/parser/XboxLiveParser;->parseTicks(Ljava/lang/String;)J

    move-result-wide v16

    .line 1634
    .local v16, "lastSeen":J
    new-instance v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;

    invoke-direct {v11}, Lcom/akop/bach/parser/XboxLiveParser$Gamer;-><init>()V

    .line 1636
    .local v11, "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    iput-object v12, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamertag:Ljava/lang/String;

    .line 1637
    const-string v2, "GamerScore"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamerscore:I

    .line 1638
    const-string v2, "LargeGamerTileUrl"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IconUrl:Ljava/lang/String;

    .line 1640
    const-string v2, "TitleInfo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 1641
    .local v23, "titleInfo":Lorg/json/JSONObject;
    if-eqz v23, :cond_4

    .line 1643
    const-string v2, "Id"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/akop/bach/parser/XboxLiveParser;->getBoxArt(JZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleIconUrl:Ljava/lang/String;

    .line 1645
    const-string v2, "Id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->CurrentActivity:Ljava/lang/String;

    .line 1657
    :cond_4
    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1651
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ad

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->CurrentActivity:Ljava/lang/String;

    goto :goto_2

    .line 1660
    .end local v11    # "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    .end local v12    # "gamertag":Ljava/lang/String;
    .end local v16    # "lastSeen":J
    .end local v21    # "player":Lorg/json/JSONObject;
    .end local v23    # "titleInfo":Lorg/json/JSONObject;
    :cond_6
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1661
    const-string v2, "Recent players page loading"

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v24

    .line 1663
    :cond_7
    new-instance v10, Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;

    invoke-direct {v10}, Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;-><init>()V

    .line 1665
    .local v10, "cmp":Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;
    move-object/from16 v0, v20

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1667
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1668
    const-string v2, "Recent players page sorting"

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v24

    .line 1670
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;

    .line 1672
    .restart local v11    # "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/akop/bach/XboxLive$RecentPlayers;->Players:Lcom/akop/bach/XboxLive$RecentPlayersCursor;

    iget-object v3, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamertag:Ljava/lang/String;

    iget-object v4, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->CurrentActivity:Ljava/lang/String;

    iget-object v5, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IconUrl:Ljava/lang/String;

    iget-object v6, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleIconUrl:Ljava/lang/String;

    iget-object v7, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleId:Ljava/lang/String;

    iget v8, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamerscore:I

    iget-boolean v9, v11, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IsFriend:Z

    invoke-virtual/range {v2 .. v9}, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_3

    .line 1677
    .end local v11    # "gamer":Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    :cond_9
    return-object v18
.end method

.method private parseRefreshBeaconData(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 22
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 853
    .local v14, "started":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 854
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v17, "https://live.xbox.com/%1$s/Beacons/JumpInList"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 857
    .local v16, "url":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 858
    .local v11, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v17, "__RequestVerificationToken"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v11, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonArray(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    .line 862
    .local v4, "activities":Lorg/json/JSONArray;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 863
    const-string v17, "Beacon page fetch"

    move-object/from16 v0, v17

    invoke-static {v0, v14, v15}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v14

    .line 865
    :cond_0
    if-eqz v4, :cond_4

    .line 869
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v17, "BeaconSet"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v18, "BeaconText"

    const/16 v17, 0x0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    sget-object v17, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AccountId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v7, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 876
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    .local v12, "n":I
    :goto_0
    if-ge v10, v12, :cond_3

    .line 878
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 882
    .local v5, "activity":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    const-string v17, "titleId"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "titleId":Ljava/lang/String;
    if-eqz v13, :cond_1

    const-string v17, "beacon"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .local v6, "beacon":Lorg/json/JSONObject;
    if-nez v6, :cond_2

    .line 876
    .end local v6    # "beacon":Lorg/json/JSONObject;
    .end local v13    # "titleId":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 889
    .restart local v6    # "beacon":Lorg/json/JSONObject;
    .restart local v13    # "titleId":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/akop/bach/XboxLive$Games;->getId(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 890
    .local v9, "gameId":Ljava/lang/Long;
    if-eqz v9, :cond_1

    .line 893
    new-instance v8, Landroid/content/ContentValues;

    .end local v8    # "cv":Landroid/content/ContentValues;
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .restart local v8    # "cv":Landroid/content/ContentValues;
    const-string v17, "BeaconSet"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 895
    const-string v17, "BeaconText"

    const-string v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    sget-object v17, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "_id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v7, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 900
    .end local v5    # "activity":Lorg/json/JSONObject;
    .end local v6    # "beacon":Lorg/json/JSONObject;
    .end local v9    # "gameId":Ljava/lang/Long;
    .end local v13    # "titleId":Ljava/lang/String;
    :cond_3
    sget-object v17, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 903
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v10    # "i":I
    .end local v12    # "n":I
    :cond_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 904
    const-string v17, "Beacon updates"

    move-object/from16 v0, v17

    invoke-static {v0, v14, v15}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v14

    .line 905
    :cond_5
    return-void
.end method

.method private parseSendMessage(Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "recipients"    # [Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v19

    if-nez v19, :cond_0

    .line 623
    new-instance v19, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f080007

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v19

    .line 625
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 627
    .local v16, "started":J
    const-string v19, "https://live.xbox.com/%1$s/Messages?xr=socialtwistnav"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 630
    .local v15, "token":Ljava/lang/String;
    const-string v19, "https://live.xbox.com/%1$s/Messages/SendMessage"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 633
    .local v18, "url":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    const/16 v19, 0x64

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 636
    .local v9, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v4, p2

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v11, :cond_1

    aget-object v14, v4, v8

    .line 637
    .local v14, "recipient":Ljava/lang/String;
    const-string v19, "recipients"

    move-object/from16 v0, v19

    invoke-static {v9, v0, v14}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 636
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 640
    .end local v14    # "recipient":Ljava/lang/String;
    :cond_1
    const-string v19, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v9, v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    const-string v19, "__RequestVerificationToken"

    move-object/from16 v0, v19

    invoke-static {v9, v0, v15}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v12

    .line 647
    .local v12, "page":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 648
    const-string v19, "Send message page fetch"

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v16

    .line 650
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v10

    .line 654
    .local v10, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v19, "Success"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 656
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 657
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "XboxLiveParser/parseSendMessage: Parser error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 659
    :cond_3
    new-instance v19, Lcom/akop/bach/parser/ParserException;

    const-string v20, "Status"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0800b8

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :catch_0
    move-exception v7

    .line 692
    .local v7, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 694
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "XboxLiveParser/parseSendMessage: JSON error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 699
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 700
    const-string v19, "Message send processing"

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 701
    :cond_5
    return-void

    .line 663
    :cond_6
    :try_start_1
    const-string v13, ""

    .line 664
    .local v13, "preview":Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 666
    const-string v19, "\\W"

    const-string v20, " "

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 667
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 668
    const/16 v19, 0x0

    const/16 v20, 0x13

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 671
    :cond_7
    new-instance v6, Landroid/content/ContentValues;

    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 673
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v19, "AccountId"

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 674
    const-string v19, "Recipients"

    const-string v20, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->joinString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v19, "Sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    const-string v19, "Preview"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v19, "Body"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 682
    .local v5, "cr":Landroid/content/ContentResolver;
    sget-object v19, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 684
    .end local v5    # "cr":Landroid/content/ContentResolver;
    :catch_1
    move-exception v7

    .line 686
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 687
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method private parseSummaryData(Lcom/akop/bach/XboxLiveAccount;)Landroid/content/ContentValues;
    .locals 14
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 707
    .local v6, "started":J
    const-string v9, "https://live.xbox.com/Handlers/ShellData.ashx?culture=%1$s&XBXMChg=%2$d&XBXNChg=%2$d&XBXSPChg=%2$d&XBXChg=%2$d&leetcallback=jsonp1287728723001"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 710
    .local v8, "url":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 711
    .local v5, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v9, "Referer"

    const-string v10, "https://live.xbox.com/en-US/MyXbox"

    invoke-interface {v5, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v9, "X-Requested-With"

    const-string v10, "XMLHttpRequest"

    invoke-interface {v5, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 716
    .local v4, "page":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 717
    const-string v9, "Profile page fetch"

    invoke-static {v9, v6, v7}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v6

    .line 719
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/16 v9, 0xf

    invoke-direct {v0, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 722
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0, v4}, Lcom/akop/bach/parser/XboxLiveParser;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 726
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "gamertag"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 734
    .local v2, "gamertag":Ljava/lang/String;
    const-string v9, "Gamertag"

    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v9, "IconUrl"

    const-string v10, "gamerpic"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v9, "PointsBalance"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const-string v10, "IsGold"

    const-string v9, "tier"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x6

    if-lt v9, v11, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 738
    const-string v9, "Tier"

    const-string v10, "tiertext"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v9, "Gamerscore"

    const-string v10, "gamerscore"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string v9, "UnreadMessages"

    const-string v10, "messages"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    const-string v9, "UnreadNotifications"

    const-string v10, "notifications"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    const-string v9, "Rep"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    return-object v0

    .line 728
    .end local v2    # "gamertag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Lorg/json/JSONException;
    new-instance v9, Lcom/akop/bach/parser/ParserException;

    iget-object v10, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v11, 0x7f080070

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-direct {v9, v10, v11, v12}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v9

    .line 737
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "gamertag":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private parseTicks(Ljava/lang/String;)J
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 443
    if-nez p1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-wide v4

    .line 447
    :cond_1
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "startPos":I
    if-ltz v2, :cond_0

    .line 450
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "endPos":I
    if-ltz v1, :cond_0

    .line 457
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .local v4, "ticks":J
    goto :goto_0

    .line 459
    .end local v4    # "ticks":J
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    .restart local v4    # "ticks":J
    goto :goto_0
.end method

.method private parseToggleBeacon(Lcom/akop/bach/XboxLiveAccount;JZLjava/lang/String;)V
    .locals 16
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gameId"    # J
    .param p4, "setBeacon"    # Z
    .param p5, "beaconText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 801
    .local v6, "started":J
    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/akop/bach/XboxLive$Games;->getSetBeaconCount(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_0

    .line 802
    new-instance v10, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v12, 0x7f080142

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-direct {v10, v11, v12, v13}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v10

    .line 804
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v10, v0, v1}, Lcom/akop/bach/XboxLive$Games;->getUid(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 805
    .local v5, "titleId":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 806
    new-instance v10, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v12, 0x7f080094

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12, v13}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v10

    .line 808
    :cond_1
    const-string v10, "https://live.xbox.com/%1$s/Activity?xr=socialtwistnav"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 810
    .local v8, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    .line 813
    .local v4, "locale":Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 814
    const-string v10, "https://live.xbox.com/%1$s/Beacons/Set"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 818
    .local v9, "url":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 819
    .local v3, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v10, "__RequestVerificationToken"

    invoke-static {v3, v10, v8}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 820
    const-string v10, "titleId"

    invoke-static {v3, v10, v5}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 822
    if-eqz p4, :cond_2

    .line 823
    const-string v10, "text"

    move-object/from16 v0, p5

    invoke-static {v3, v10, v0}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 827
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonStatus(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 828
    new-instance v10, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v12, 0x7f080051

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12, v13}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v10
    :try_end_0
    .catch Lcom/akop/bach/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 830
    :catch_0
    move-exception v2

    .line 832
    .local v2, "ex":Lcom/akop/bach/parser/ParserException;
    throw v2

    .line 816
    .end local v2    # "ex":Lcom/akop/bach/parser/ParserException;
    .end local v3    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v9    # "url":Ljava/lang/String;
    :cond_3
    const-string v10, "https://live.xbox.com/%1$s/Beacons/Clear"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "url":Ljava/lang/String;
    goto :goto_0

    .line 834
    .restart local v3    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v2

    .line 836
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 837
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 839
    :cond_4
    new-instance v10, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v12, 0x7f080051

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12, v13}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v10

    .line 842
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/akop/bach/parser/XboxLiveParser;->parseRefreshBeaconData(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 844
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 845
    const-string v10, "Beacon toggle"

    invoke-static {v10, v6, v7}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v6

    .line 846
    :cond_6
    return-void
.end method

.method private parseUpdateProfile(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "motto"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "bio"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1446
    .local v6, "started":J
    const-string v10, "https://live.xbox.com/%1$s/MyXbox/GamerProfile"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1447
    .local v9, "url":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1449
    .local v5, "page":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1450
    const-string v10, "Profile load"

    invoke-static {v10, v6, v7}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1452
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1453
    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v10, 0x0

    invoke-static {v5, v4, v10}, Lcom/akop/bach/parser/XboxLiveParser;->getInputs(Ljava/lang/String;Ljava/util/List;Ljava/util/regex/Pattern;)V

    .line 1455
    const-string v10, "Motto"

    move-object/from16 v0, p2

    invoke-static {v4, v10, v0}, Lcom/akop/bach/parser/XboxLiveParser;->setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1456
    const-string v10, "RealName"

    move-object/from16 v0, p3

    invoke-static {v4, v10, v0}, Lcom/akop/bach/parser/XboxLiveParser;->setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1457
    const-string v10, "Location"

    move-object/from16 v0, p4

    invoke-static {v4, v10, v0}, Lcom/akop/bach/parser/XboxLiveParser;->setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1458
    const-string v10, "Bio"

    move-object/from16 v0, p5

    invoke-static {v4, v10, v0}, Lcom/akop/bach/parser/XboxLiveParser;->setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1462
    :try_start_0
    invoke-virtual {p0, v9, v4}, Lcom/akop/bach/parser/XboxLiveParser;->submitRequest(Ljava/lang/String;Ljava/util/List;)V

    .line 1465
    new-instance v10, Lcom/akop/bach/parser/ParserException;

    iget-object v11, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v12, 0x7f08007e

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12, v13}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v10
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :catch_0
    move-exception v10

    .line 1472
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1473
    const-string v10, "Profile update"

    invoke-static {v10, v6, v7}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1477
    :cond_1
    iget-object v10, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1478
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    const/16 v10, 0xa

    invoke-direct {v3, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 1480
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v10, "Motto"

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v10, "Name"

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-string v10, "Location"

    move-object/from16 v0, p4

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const-string v10, "Bio"

    move-object/from16 v0, p5

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    sget-object v10, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1488
    .local v8, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v3, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Lcom/akop/bach/XboxLiveAccount;->setLastSummaryUpdate(J)V

    .line 1491
    iget-object v10, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/akop/bach/XboxLiveAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 1493
    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1494
    return-void
.end method

.method private parseViewMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 18
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "messageUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1923
    .local v10, "started":J
    const-string v13, "https://live.xbox.com/%1$s/Messages?xr=socialtwistnav"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/akop/bach/parser/XboxLiveParser;->getVToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1926
    .local v9, "token":Ljava/lang/String;
    const-string v13, "https://live.xbox.com/%1$s/Messages/Message"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1929
    .local v12, "url":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v13, 0x3

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1931
    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v13, "msgID"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v4, v13, v14}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1932
    const-string v13, "__RequestVerificationToken"

    invoke-static {v4, v13, v9}, Lcom/akop/bach/parser/XboxLiveParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1934
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v13}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v7

    .line 1936
    .local v7, "page":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1937
    const-string v13, "Message page fetch"

    invoke-static {v13, v10, v11}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1939
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/akop/bach/parser/XboxLiveParser;->getXboxJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1942
    .local v5, "json":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    const-string v13, "Text"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "message":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 1943
    .end local v6    # "message":Ljava/lang/String;
    :cond_1
    new-instance v13, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v15, 0x7f080070

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v13

    .line 1945
    .restart local v6    # "message":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1946
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1948
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v13, "Text"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1949
    const-string v13, "Body"

    invoke-static {v6}, Lcom/akop/bach/parser/XboxLiveParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    :cond_3
    const-string v13, "IsDirty"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1952
    const-string v13, "IsRead"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1954
    sget-object v13, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "AccountId"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v3, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1959
    .local v8, "rows":I
    const/4 v13, 0x1

    if-ge v8, v13, :cond_4

    .line 1960
    new-instance v13, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v15, 0x7f0800bd

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v13

    .line 1962
    :cond_4
    sget-object v13, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1964
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1965
    const-string v13, "Message processing"

    invoke-static {v13, v10, v11}, Lcom/akop/bach/parser/XboxLiveParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1966
    :cond_5
    return-void
.end method


# virtual methods
.method public acceptFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2653
    const-string v0, "Accept"

    invoke-direct {p0, p1, v0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    return-void
.end method

.method public addFriend(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2627
    const-string v0, "Add"

    invoke-direct {p0, p1, v0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    return-void
.end method

.method public cancelFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2647
    const-string v0, "Cancel"

    invoke-direct {p0, p1, v0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    return-void
.end method

.method public createAccount(Lcom/akop/bach/BasicAccount;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 2886
    move-object v1, p1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    .line 2889
    .local v1, "xblAccount":Lcom/akop/bach/XboxLiveAccount;
    const-string v2, "Gamertag"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/XboxLiveAccount;->setGamertag(Ljava/lang/String;)V

    .line 2890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/XboxLiveAccount;->setLastSummaryUpdate(J)V

    .line 2891
    const-string v2, "IconUrl"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/XboxLiveAccount;->setIconUrl(Ljava/lang/String;)V

    .line 2892
    const-string v2, "IsGold"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/XboxLiveAccount;->setGoldStatus(Z)V

    .line 2894
    iget-object v2, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/akop/bach/BasicAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 2897
    iget-object v2, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2898
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2899
    sget-object v2, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2900
    return-void
.end method

.method public deleteAccount(Lcom/akop/bach/BasicAccount;)V
    .locals 10
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2753
    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2754
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v6

    .line 2757
    .local v6, "accountId":J
    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

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

    .line 2762
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 2764
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 2768
    .local v8, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2770
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2771
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2772
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2782
    :catch_0
    move-exception v1

    .line 2788
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2795
    .end local v8    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    :try_start_1
    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 2805
    :goto_2
    :try_start_2
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 2815
    :goto_3
    :try_start_3
    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 2825
    :goto_4
    :try_start_4
    sget-object v1, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2835
    :goto_5
    :try_start_5
    sget-object v1, Lcom/akop/bach/XboxLive$Beacons;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2845
    :goto_6
    :try_start_6
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2855
    :goto_7
    :try_start_7
    sget-object v1, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2865
    :goto_8
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/XboxLiveParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 2873
    :goto_9
    sget-object v1, Lcom/akop/bach/XboxLive$Achievements;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2874
    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2875
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2876
    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2877
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2878
    sget-object v1, Lcom/akop/bach/XboxLive$Beacons;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2879
    sget-object v1, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2880
    sget-object v1, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2882
    return-void

    .line 2775
    .restart local v8    # "buffer":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2778
    sget-object v1, Lcom/akop/bach/XboxLive$Achievements;->CONTENT_URI:Landroid/net/Uri;

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

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2788
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2867
    .end local v8    # "buffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v1

    goto :goto_9

    .line 2857
    :catch_2
    move-exception v1

    goto :goto_8

    .line 2847
    :catch_3
    move-exception v1

    goto :goto_7

    .line 2837
    :catch_4
    move-exception v1

    goto/16 :goto_6

    .line 2827
    :catch_5
    move-exception v1

    goto/16 :goto_5

    .line 2817
    :catch_6
    move-exception v1

    goto/16 :goto_4

    .line 2807
    :catch_7
    move-exception v1

    goto/16 :goto_3

    .line 2797
    :catch_8
    move-exception v1

    goto/16 :goto_2
.end method

.method public fetchAchievements(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2471
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser$3;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2480
    return-void
.end method

.method public fetchBlockMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "messageUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2541
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser$8;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2550
    return-void
.end method

.method public fetchCompareAchievements(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedAchievementInfo;
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .param p3, "gameUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2709
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser$17;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    return-object v0
.end method

.method public fetchCompareGames(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedGameInfo;
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2665
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/akop/bach/parser/XboxLiveParser$14;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;

    return-object v0
.end method

.method public fetchDeleteMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "messageUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2527
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser$7;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2536
    return-void
.end method

.method public fetchFriendSummary(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2452
    return-void
.end method

.method public fetchFriends(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2485
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$4;

    invoke-direct {v0, p0, p1}, Lcom/akop/bach/parser/XboxLiveParser$4;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2494
    return-void
.end method

.method public fetchFriendsOfFriend(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$FriendsOfFriend;
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2680
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/akop/bach/parser/XboxLiveParser$15;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$FriendsOfFriend;

    return-object v0
.end method

.method public fetchGameOverview(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$GameOverviewInfo;
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2723
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$18;

    invoke-direct {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser$18;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$GameOverviewInfo;

    return-object v0
.end method

.method public fetchGames(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2457
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$2;

    invoke-direct {v0, p0, p1}, Lcom/akop/bach/parser/XboxLiveParser$2;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2466
    return-void
.end method

.method public fetchMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2513
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser$6;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2522
    return-void
.end method

.method public fetchMessages(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2499
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$5;

    invoke-direct {v0, p0, p1}, Lcom/akop/bach/parser/XboxLiveParser$5;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2508
    return-void
.end method

.method public fetchRecentPlayers(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/XboxLive$RecentPlayers;
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2694
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$16;

    invoke-direct {v0, p0, p1}, Lcom/akop/bach/parser/XboxLiveParser$16;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$RecentPlayers;

    return-object v0
.end method

.method public fetchSendMessage(Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "recipients"    # [Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2556
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser$9;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2565
    return-void
.end method

.method public fetchServerStatus()Lcom/akop/bach/XboxLive$LiveStatusInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 2290
    const-string v10, "https://support.xbox.com/%1$s/xbox-live-status"

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2291
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/akop/bach/parser/XboxLiveParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2293
    .local v4, "page":Ljava/lang/String;
    new-instance v0, Lcom/akop/bach/XboxLive$LiveStatusInfo;

    invoke-direct {v0}, Lcom/akop/bach/XboxLive$LiveStatusInfo;-><init>()V

    .line 2295
    .local v0, "info":Lcom/akop/bach/XboxLive$LiveStatusInfo;
    sget-object v10, Lcom/akop/bach/parser/XboxLiveParser;->PATTERN_STATUS_ITEM:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2296
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2298
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/akop/bach/parser/XboxLiveParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2299
    .local v3, "name":Ljava/lang/String;
    const-string v10, "active"

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2300
    .local v1, "isOk":Z
    if-eqz v1, :cond_0

    move v5, v8

    .line 2301
    .local v5, "status":I
    :goto_1
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 2303
    .local v6, "statusText":Ljava/lang/String;
    invoke-virtual {v0, v3, v5, v6}, Lcom/akop/bach/XboxLive$LiveStatusInfo;->addCategory(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .end local v5    # "status":I
    .end local v6    # "statusText":Ljava/lang/String;
    :cond_0
    move v5, v9

    .line 2300
    goto :goto_1

    .line 2306
    .end local v1    # "isOk":Z
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public fetchSummary(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2437
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$1;

    invoke-direct {v0, p0, p1}, Lcom/akop/bach/parser/XboxLiveParser$1;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2446
    return-void
.end method

.method public getGamercardUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 409
    if-nez p1, :cond_0

    .line 420
    :goto_0
    return-object v1

    .line 414
    :cond_0
    :try_start_0
    const-string v2, "http://gamercard.xbox.com/%1$s/%2$s.card"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/akop/bach/parser/XboxLiveParser;->mLocale:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method protected getReplyToPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const-string v0, "https://live.xbox.com/xweb/live/passport/setCookies.ashx"

    return-object v0
.end method

.method protected initRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/akop/bach/parser/LiveParser;->initRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 289
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 290
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    const v4, 0xea60

    div-int v2, v3, v4

    .line 292
    .local v2, "utcOffsetMinutes":I
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const-string v3, "UtcOffsetMinutes"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 295
    const-string v3, ".xbox.com"

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 297
    iget-object v3, p0, Lcom/akop/bach/parser/XboxLiveParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 298
    return-void
.end method

.method public rejectFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2659
    const-string v0, "Decline"

    invoke-direct {p0, p1, v0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    return-void
.end method

.method public removeBeacon(Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2599
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser$12;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2608
    return-void
.end method

.method public removeFriend(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2633
    const-string v0, "Remove"

    invoke-direct {p0, p1, v0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    return-void
.end method

.method public setBeacon(Lcom/akop/bach/XboxLiveAccount;JLjava/lang/String;)V
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gameId"    # J
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2585
    new-instance v1, Lcom/akop/bach/parser/XboxLiveParser$11;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/akop/bach/parser/XboxLiveParser$11;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;JLjava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2594
    return-void
.end method

.method public updateProfile(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "motto"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "bio"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 2571
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/parser/XboxLiveParser$10;-><init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchParseable(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/parser/XboxLiveParser$Parseable;)V

    .line 2580
    return-void
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
    const/4 v4, 0x1

    .line 2738
    invoke-virtual {p0, p1, v4}, Lcom/akop/bach/parser/XboxLiveParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2739
    new-instance v1, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v2, p0, Lcom/akop/bach/parser/XboxLiveParser;->mContext:Landroid/content/Context;

    const v3, 0x7f08006f

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getLogonId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p1

    .line 2743
    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    invoke-direct {p0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->parseSummaryData(Lcom/akop/bach/XboxLiveAccount;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2744
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2745
    const-string v1, "Uuid"

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    return-object v0
.end method
