.class Lcom/akop/bach/provider/PsnProvider$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PsnProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/provider/PsnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string v0, "psn.db"

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 104
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 109
    const-string v0, "CREATE TABLE profiles (_id INTEGER PRIMARY KEY AUTOINCREMENT, Uuid TEXT UNIQUE NOT NULL, AccountId INTEGER UNIQUE NOT NULL, OnlineId TEXT NOT NULL, IconUrl TEXT, Level INTEGER NOT NULL, MemberType INTEGER NOT NULL DEFAULT 0, PlatinumTrophies INTEGER NOT NULL, GoldTrophies INTEGER NOT NULL, SilverTrophies INTEGER NOT NULL, BronzeTrophies INTEGER NOT NULL, Progress INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "CREATE TABLE games (_id INTEGER PRIMARY KEY AUTOINCREMENT, Uid TEXT NOT NULL, Title TEXT NOT NULL, AccountId INTEGER NOT NULL, Progress INTEGER NOT NULL, UnlockedPlatinum INTEGER NOT NULL, UnlockedGold INTEGER NOT NULL, UnlockedSilver INTEGER NOT NULL, UnlockedBronze INTEGER NOT NULL, TrophiesDirty INTEGER NOT NULL, SortOrder INTEGER NOT NULL, IconUrl TEXT NOT NULL, LastUpdated INTEGER NOT NULL,UNIQUE (AccountId,Uid));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string v0, "CREATE TABLE trophies (_id INTEGER PRIMARY KEY AUTOINCREMENT, GameId INTEGER NOT NULL, Title TEXT NOT NULL, Description TEXT, IconUrl TEXT, Earned INTEGER NOT NULL, EarnedText TEXT, Type INTEGER NOT NULL, IsSecret INTEGER NOT NULL, SortOrder INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v0, "CREATE TABLE friends (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, OnlineId TEXT NOT NULL, Level INTEGER NOT NULL, Progress INTEGER NOT NULL, Status INTEGER NOT NULL, Playing TEXT, IconUrl TEXT, IsFavorite INTEGER NOT NULL DEFAULT 0, MemberType INTEGER NOT NULL DEFAULT 0, Comment TEXT, LastUpdated INTEGER NOT NULL DEFAULT 0, DeleteMarker INTEGER NOT NULL DEFAULT 0, BronzeTrophies INTEGER NOT NULL, SilverTrophies INTEGER NOT NULL, GoldTrophies INTEGER NOT NULL, PlatinumTrophies INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "CREATE TABLE notify_states (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, LastUpdated INTEGER NOT NULL DEFAULT 0, Type INTEGER NOT NULL, Data TEXT NOT NULL DEFAULT \'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 180
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "Upgrading database from version %d to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 185
    .local v0, "upgraded":Z
    const/16 v1, 0xd

    if-ge p2, v1, :cond_2

    .line 187
    const/4 v0, 0x1

    .line 188
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "PsnProvider: upgrading to version 13"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 191
    :cond_1
    const-string v1, "ALTER TABLE trophies ADD COLUMN EarnedText TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v1, "ALTER TABLE friends ADD COLUMN LastUpdated INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string v1, "ALTER TABLE friends ADD COLUMN DeleteMarker INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    :cond_2
    const/16 v1, 0xe

    if-ge p2, v1, :cond_4

    .line 201
    const/4 v0, 0x1

    .line 202
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    const-string v1, "PsnProvider: upgrading to version 14"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 205
    :cond_3
    const-string v1, "ALTER TABLE friends ADD COLUMN IsFavorite INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    :cond_4
    const/16 v1, 0xf

    if-ge p2, v1, :cond_6

    .line 211
    const/4 v0, 0x1

    .line 212
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    const-string v1, "PsnProvider: upgrading to version 15"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 215
    :cond_5
    const-string v1, "ALTER TABLE profiles ADD COLUMN MemberType INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    const-string v1, "ALTER TABLE friends ADD COLUMN MemberType INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    const-string v1, "ALTER TABLE friends ADD COLUMN Comment TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v1, "DELETE FROM games"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v1, "DELETE FROM trophies"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    :cond_6
    const/16 v1, 0x10

    if-ge p2, v1, :cond_8

    .line 227
    const/4 v0, 0x1

    .line 228
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 229
    const-string v1, "PsnProvider: upgrading to version 16"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 231
    :cond_7
    const-string v1, "DELETE FROM games"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    const-string v1, "DELETE FROM trophies"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    :cond_8
    const/16 v1, 0x11

    if-ge p2, v1, :cond_a

    .line 237
    const/4 v0, 0x1

    .line 238
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 239
    const-string v1, "PsnProvider: upgrading to version 17"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 241
    :cond_9
    const-string v1, "CREATE TABLE notify_states (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, LastUpdated INTEGER NOT NULL DEFAULT 0, Type INTEGER NOT NULL, Data TEXT NOT NULL DEFAULT \'\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    :cond_a
    if-nez v0, :cond_c

    .line 251
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 252
    const-string v1, "PsnProvider: Recreating structure"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 254
    :cond_b
    const-string v1, "DROP TABLE IF EXISTS profiles"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string v1, "DROP TABLE IF EXISTS games"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    const-string v1, "DROP TABLE IF EXISTS trophies"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v1, "DROP TABLE IF EXISTS friends"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    const-string v1, "DROP TABLE IF EXISTS notify_states"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/akop/bach/provider/PsnProvider$DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 262
    :cond_c
    return-void
.end method
