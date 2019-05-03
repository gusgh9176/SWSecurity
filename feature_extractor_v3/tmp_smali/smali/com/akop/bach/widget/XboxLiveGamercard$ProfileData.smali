.class Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;
.super Ljava/lang/Object;
.source "XboxLiveGamercard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/widget/XboxLiveGamercard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileData"
.end annotation


# static fields
.field private static final GAMES_AGGR_PROJECTION:[Ljava/lang/String;

.field private static final GAMES_PROJECTION:[Ljava/lang/String;

.field private static final PROFILE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private achievementStats:Ljava/lang/String;

.field public avatarUrl:Ljava/lang/String;

.field public gameIconUrls:[Ljava/lang/String;

.field public gamerscore:I

.field private gamerscoreStats:Ljava/lang/String;

.field public gamertag:Ljava/lang/String;

.field public gamesPlayed:I

.field private lastPlayed:Ljava/lang/String;

.field private rep:I

.field private zone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Gamerscore"

    aput-object v1, v0, v2

    const-string v1, "Rep"

    aput-object v1, v0, v3

    const-string v1, "Zone"

    aput-object v1, v0, v4

    sput-object v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->PROFILE_PROJECTION:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "BoxartUrl"

    aput-object v1, v0, v2

    sput-object v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SUM(PointsAcquired)"

    aput-object v1, v0, v2

    const-string v1, "SUM(PointsTotal)"

    aput-object v1, v0, v3

    const-string v1, "SUM(AchievementsUnlocked)"

    aput-object v1, v0, v4

    const-string v1, "SUM(AchievementsTotal)"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "MAX(LastPlayed)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->GAMES_AGGR_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const v1, 0x7f08014b

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->rep:I

    .line 110
    iput v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamerscore:I

    .line 111
    iput v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamesPlayed:I

    .line 112
    iput-object v2, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    .line 113
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->zone:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->achievementStats:Ljava/lang/String;

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamerscoreStats:Ljava/lang/String;

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->lastPlayed:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamertag:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->zone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->achievementStats:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamerscoreStats:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->lastPlayed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;

    .prologue
    .line 78
    iget v0, p0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->rep:I

    return v0
.end method

.method public static load(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    const/16 v24, 0x0

    .line 249
    :goto_0
    return-object v24

    .line 127
    :cond_0
    new-instance v24, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;

    invoke-direct/range {v24 .. v25}, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;-><init>(Landroid/content/Context;)V

    .line 129
    .local v24, "pd":Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamertag:Ljava/lang/String;

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->PROFILE_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 141
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_1

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v24

    iput v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamerscore:I

    .line 144
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v24

    iput v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->rep:I

    .line 145
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->zone:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    if-eqz v15, :cond_2

    .line 156
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "criteria":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->isShowingApps()Z

    move-result v2

    if-nez v2, :cond_3

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND AchievementsTotal> 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ListIndex ASC, LastPlayed DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 172
    if-eqz v15, :cond_6

    .line 174
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 176
    .local v21, "n":I
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v24

    iput v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamesPlayed:I

    .line 177
    move/from16 v0, v21

    new-array v2, v0, [Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    .line 179
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 180
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 148
    .end local v5    # "criteria":Ljava/lang/String;
    .end local v20    # "i":I
    .end local v21    # "n":I
    :catch_0
    move-exception v16

    .line 150
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :cond_4
    if-eqz v15, :cond_2

    .line 156
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 155
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_5

    .line 156
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 190
    .restart local v5    # "criteria":Ljava/lang/String;
    :cond_6
    if-eqz v15, :cond_7

    .line 191
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->GAMES_AGGR_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 200
    const/4 v14, 0x0

    .line 201
    .local v14, "achUnlocked":I
    const/4 v13, 0x0

    .line 202
    .local v13, "achTotal":I
    const/4 v12, 0x0

    .line 203
    .local v12, "achPercent":I
    const/16 v19, 0x0

    .line 204
    .local v19, "gsUnlocked":I
    const/16 v18, 0x0

    .line 205
    .local v18, "gsTotal":I
    const/16 v17, 0x0

    .line 206
    .local v17, "gsPercent":I
    const-wide/16 v22, 0x0

    .line 210
    .local v22, "lastPlayed":J
    if-eqz v15, :cond_9

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 213
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 214
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 215
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 216
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v22

    .line 218
    if-eqz v13, :cond_8

    .line 219
    int-to-float v2, v14

    int-to-float v3, v13

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    double-to-int v12, v2

    .line 220
    :cond_8
    if-eqz v18, :cond_9

    .line 221
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    double-to-int v0, v2

    move/from16 v17, v0

    .line 231
    :cond_9
    if-eqz v15, :cond_a

    .line 232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_a
    :goto_4
    const v2, 0x7f080012

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->achievementStats:Ljava/lang/String;

    .line 237
    const v2, 0x7f080012

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->gamerscoreStats:Ljava/lang/String;

    .line 240
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-lez v2, :cond_f

    .line 242
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->lastPlayed:Ljava/lang/String;

    goto/16 :goto_0

    .line 183
    .end local v12    # "achPercent":I
    .end local v13    # "achTotal":I
    .end local v14    # "achUnlocked":I
    .end local v17    # "gsPercent":I
    .end local v18    # "gsTotal":I
    .end local v19    # "gsUnlocked":I
    .end local v22    # "lastPlayed":J
    :catch_1
    move-exception v16

    .line 185
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 186
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    :cond_b
    if-eqz v15, :cond_7

    .line 191
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 190
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v15, :cond_c

    .line 191
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 224
    .restart local v12    # "achPercent":I
    .restart local v13    # "achTotal":I
    .restart local v14    # "achUnlocked":I
    .restart local v17    # "gsPercent":I
    .restart local v18    # "gsTotal":I
    .restart local v19    # "gsUnlocked":I
    .restart local v22    # "lastPlayed":J
    :catch_2
    move-exception v16

    .line 226
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 227
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 231
    :cond_d
    if-eqz v15, :cond_a

    .line 232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 231
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    if-eqz v15, :cond_e

    .line 232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2

    .line 246
    :cond_f
    const v2, 0x7f08014b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/akop/bach/widget/XboxLiveGamercard$ProfileData;->lastPlayed:Ljava/lang/String;

    goto/16 :goto_0
.end method
