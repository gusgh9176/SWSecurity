.class Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;
.super Ljava/lang/Object;
.source "XboxLiveGamerstrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/widget/XboxLiveGamerstrip;
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Gamerscore"

    aput-object v1, v0, v2

    sput-object v0, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->PROFILE_PROJECTION:[Ljava/lang/String;

    .line 66
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "BoxartUrl"

    aput-object v1, v0, v2

    sput-object v0, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gamerscore:I

    .line 78
    iput-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gamertag:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    const/4 v4, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-object v4

    .line 89
    :cond_0
    new-instance v10, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;

    invoke-direct {v10, p0}, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;-><init>(Landroid/content/Context;)V

    .line 91
    .local v10, "pd":Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gamertag:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->PROFILE_PROJECTION:[Ljava/lang/String;

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

    .line 103
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gamerscore:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    if-eqz v6, :cond_2

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
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

    .line 122
    .local v3, "criteria":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->isShowingApps()Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND AchievementsTotal> 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    const-string v5, "ListIndex ASC, LastPlayed DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    if-eqz v6, :cond_6

    .line 134
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 136
    .local v9, "n":I
    new-array v0, v9, [Ljava/lang/String;

    iput-object v0, v10, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    .line 138
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v9, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    iget-object v0, v10, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 108
    .end local v3    # "criteria":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "n":I
    :catch_0
    move-exception v7

    .line 110
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :cond_4
    if-eqz v6, :cond_2

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 115
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 149
    .restart local v3    # "criteria":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    move-object v4, v10

    .line 153
    goto/16 :goto_0

    .line 142
    :catch_1
    move-exception v7

    .line 144
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    :cond_8
    if-eqz v6, :cond_7

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 149
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_9

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method
