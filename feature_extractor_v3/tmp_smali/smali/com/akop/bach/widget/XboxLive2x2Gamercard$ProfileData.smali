.class Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;
.super Ljava/lang/Object;
.source "XboxLive2x2Gamercard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/widget/XboxLive2x2Gamercard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileData"
.end annotation


# static fields
.field private static final GAMES_PROJECTION:[Ljava/lang/String;

.field private static final PROFILE_PROJECTION:[Ljava/lang/String;


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public gameIconUrls:[Ljava/lang/String;

.field public gamerscore:I

.field public gamertag:Ljava/lang/String;

.field private rep:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Gamerscore"

    aput-object v1, v0, v3

    const-string v1, "Rep"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "Zone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->PROFILE_PROJECTION:[Ljava/lang/String;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "BoxartUrl"

    aput-object v1, v0, v3

    sput-object v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v1, p0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->rep:I

    .line 95
    iput v1, p0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gamerscore:I

    .line 96
    iput-object v0, p0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gamertag:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic access$300(Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;

    .prologue
    .line 75
    iget v0, p0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->rep:I

    return v0
.end method

.method public static load(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    const/4 v4, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-object v4

    .line 107
    :cond_0
    new-instance v10, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;

    invoke-direct {v10, p0}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;-><init>(Landroid/content/Context;)V

    .line 109
    .local v10, "pd":Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gamertag:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->PROFILE_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AccountId="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gamerscore:I

    .line 124
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->rep:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    if-eqz v6, :cond_2

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "criteria":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->isShowingApps()Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND AchievementsTotal> 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    const-string v5, "ListIndex ASC, LastPlayed DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    if-eqz v6, :cond_6

    .line 153
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {}, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->access$000()[I

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 155
    .local v9, "n":I
    new-array v0, v9, [Ljava/lang/String;

    iput-object v0, v10, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    .line 157
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v9, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, v10, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 127
    .end local v3    # "criteria":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "n":I
    :catch_0
    move-exception v7

    .line 129
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :cond_4
    if-eqz v6, :cond_2

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 134
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 168
    .restart local v3    # "criteria":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    move-object v4, v10

    .line 172
    goto/16 :goto_0

    .line 161
    :catch_1
    move-exception v7

    .line 163
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 164
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    :cond_8
    if-eqz v6, :cond_7

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 168
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_9

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method
