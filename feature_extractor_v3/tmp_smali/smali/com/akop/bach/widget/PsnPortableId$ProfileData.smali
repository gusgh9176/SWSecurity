.class Lcom/akop/bach/widget/PsnPortableId$ProfileData;
.super Ljava/lang/Object;
.source "PsnPortableId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/widget/PsnPortableId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileData"
.end annotation


# static fields
.field private static final GAMES_AGGR_PROJECTION:[Ljava/lang/String;

.field private static final GAMES_PROJECTION:[Ljava/lang/String;


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public gamesPlayed:I

.field public level:I

.field public onlineId:Ljava/lang/String;

.field public progress:I

.field public trophiesBronze:I

.field public trophiesGold:I

.field public trophiesPlatinum:I

.field public trophiesSilver:I

.field public trophiesTotal:I

.field public trophiesUnlocked:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "IconUrl"

    aput-object v1, v0, v2

    sput-object v0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    .line 59
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SUM(Progress)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->GAMES_AGGR_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->onlineId:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 79
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesBronze:I

    .line 80
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesSilver:I

    .line 81
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesGold:I

    .line 82
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesPlatinum:I

    .line 83
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesTotal:I

    .line 84
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->level:I

    .line 85
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->progress:I

    .line 86
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->gamesPlayed:I

    .line 87
    iput v0, p0, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesUnlocked:I

    .line 88
    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/widget/PsnPortableId$ProfileData;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-object v4

    .line 96
    :cond_0
    new-instance v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;

    invoke-direct {v13, p0}, Lcom/akop/bach/widget/PsnPortableId$ProfileData;-><init>(Landroid/content/Context;)V

    .line 98
    .local v13, "pd":Lcom/akop/bach/widget/PsnPortableId$ProfileData;
    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->onlineId:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Level"

    aput-object v3, v2, v5

    const-string v3, "Progress"

    aput-object v3, v2, v6

    const-string v3, "PlatinumTrophies"

    aput-object v3, v2, v7

    const-string v3, "GoldTrophies"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v5, "SilverTrophies"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string v5, "BronzeTrophies"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 114
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 118
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->level:I

    .line 121
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->progress:I

    .line 122
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesPlatinum:I

    .line 123
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesGold:I

    .line 124
    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesSilver:I

    .line 125
    const/4 v1, 0x5

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesBronze:I

    .line 126
    iget v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesBronze:I

    iget v2, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesSilver:I

    add-int/2addr v1, v2

    iget v2, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesGold:I

    add-int/2addr v1, v2

    iget v2, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesPlatinum:I

    add-int/2addr v1, v2

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesTotal:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "SortOrder ASC"

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 150
    if-eqz v11, :cond_3

    .line 154
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->gamesPlayed:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->GAMES_AGGR_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "SortOrder ASC"

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 174
    if-eqz v11, :cond_5

    .line 178
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->gamesPlayed:I

    if-lez v1, :cond_4

    .line 179
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget v2, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->gamesPlayed:I

    div-int/2addr v1, v2

    iput v1, v13, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesUnlocked:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    move-object v4, v13

    .line 192
    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v12

    .line 134
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 135
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 156
    :catch_1
    move-exception v12

    .line 158
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 181
    :catch_2
    move-exception v12

    .line 183
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 184
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 188
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method
