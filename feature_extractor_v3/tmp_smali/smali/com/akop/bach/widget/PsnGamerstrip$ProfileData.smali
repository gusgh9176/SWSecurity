.class Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;
.super Ljava/lang/Object;
.source "PsnGamerstrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/widget/PsnGamerstrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileData"
.end annotation


# static fields
.field private static final GAMES_PROJECTION:[Ljava/lang/String;


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public gameIconUrls:[Ljava/lang/String;

.field public level:I

.field public onlineId:Ljava/lang/String;

.field public trophiesBronze:I

.field public trophiesGold:I

.field public trophiesPlatinum:I

.field public trophiesSilver:I

.field public trophiesTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->onlineId:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 127
    iput v0, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesBronze:I

    .line 128
    iput v0, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesSilver:I

    .line 129
    iput v0, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesGold:I

    .line 130
    iput v0, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesPlatinum:I

    .line 131
    iput v0, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesTotal:I

    .line 132
    iput v0, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->level:I

    .line 133
    iput-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 140
    const/4 v11, 0x0

    .line 213
    :cond_0
    :goto_0
    return-object v11

    .line 142
    :cond_1
    new-instance v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;

    invoke-direct {v11, p0}, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;-><init>(Landroid/content/Context;)V

    .line 144
    .local v11, "pd":Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;
    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->onlineId:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->avatarUrl:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Level"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Progress"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "PlatinumTrophies"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "GoldTrophies"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "SilverTrophies"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "BronzeTrophies"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 162
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->level:I

    .line 165
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesPlatinum:I

    .line 166
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesGold:I

    .line 167
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesSilver:I

    .line 168
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesBronze:I

    .line 169
    iget v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesBronze:I

    iget v2, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesSilver:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesGold:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesPlatinum:I

    add-int/2addr v1, v2

    iput v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesTotal:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_2
    if-eqz v7, :cond_3

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->GAMES_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "SortOrder ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 195
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {}, Lcom/akop/bach/widget/PsnGamerstrip;->access$000()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 197
    .local v10, "n":I
    new-array v1, v10, [Ljava/lang/String;

    iput-object v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    .line 199
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v10, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 200
    iget-object v1, v11, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 175
    .end local v9    # "i":I
    .end local v10    # "n":I
    :catch_0
    move-exception v8

    .line 177
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :cond_4
    if-eqz v7, :cond_3

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 182
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 209
    .restart local v9    # "i":I
    .restart local v10    # "n":I
    :cond_6
    if-eqz v7, :cond_0

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 202
    .end local v9    # "i":I
    .end local v10    # "n":I
    :catch_1
    move-exception v8

    .line 204
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    :cond_7
    if-eqz v7, :cond_0

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 209
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v7, :cond_8

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method
