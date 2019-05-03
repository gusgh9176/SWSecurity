.class Lcom/akop/bach/provider/XboxLiveProvider$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "XboxLiveProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/provider/XboxLiveProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/provider/XboxLiveProvider;


# direct methods
.method public constructor <init>(Lcom/akop/bach/provider/XboxLiveProvider;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/akop/bach/provider/XboxLiveProvider$DbHelper;->this$0:Lcom/akop/bach/provider/XboxLiveProvider;

    .line 126
    const-string v0, "xboxlive.db"

    const/4 v1, 0x0

    const/16 v2, 0x1b

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 127
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 132
    const-string v0, "CREATE TABLE profiles (_id INTEGER PRIMARY KEY AUTOINCREMENT, Uuid TEXT UNIQUE NOT NULL, AccountId INTEGER UNIQUE NOT NULL, IconUrl TEXT NOT NULL, Gamertag TEXT NOT NULL, Gamerscore INTEGER NOT NULL, IsGold INTEGER NOT NULL, Tier TEXT, UnreadMessages INTEGER NOT NULL, UnreadNotifications INTEGER NOT NULL, PointsBalance INTEGER NOT NULL, Motto TEXT, Rep INTEGER NOT NULL, Zone TEXT, Name TEXT NOT NULL DEFAULT \'\', Location TEXT NOT NULL DEFAULT \'\', Bio TEXT NOT NULL DEFAULT \'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v0, "CREATE TABLE friends (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, Gamertag TEXT NOT NULL, IconUrl TEXT NOT NULL, IsFavorite INTEGER NOT NULL DEFAULT 0, Gamerscore INTEGER NOT NULL, StatusCode INTEGER NOT NULL, StatusDescription TEXT, Motto TEXT, CurrentActivity TEXT, Name TEXT, Location TEXT, Bio TEXT, Rep INTEGER NOT NULL, DeleteMarker INTEGER NOT NULL, LastUpdated INTEGER NOT NULL, TitleId INTEGER NOT NULL DEFAULT 0, TitleName TEXT, TitleUrl TEXT, UNIQUE (AccountId,Gamertag));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v0, "CREATE TABLE games (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, Title TEXT NOT NULL, BoxartUrl TEXT, Uid TEXT NOT NULL, LastPlayed INTEGER NOT NULL,PointsAcquired INTEGER NOT NULL, PointsTotal INTEGER NOT NULL, AchievementsUnlocked INTEGER NOT NULL, AchievementsTotal INTEGER NOT NULL, AchievementsStatus INTEGER NOT NULL, BeaconSet INTEGER NOT NULL DEFAULT 0, BeaconText TEXT, LastUpdated INTEGER NOT NULL, GameUrl TEXT, ListIndex INTEGER NOT NULL, UNIQUE (AccountId,Uid));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v0, "CREATE TABLE achievements (_id INTEGER PRIMARY KEY AUTOINCREMENT, GameId INTEGER NOT NULL, Title TEXT NOT NULL, Description TEXT NOT NULL, IconUrl TEXT NOT NULL, Points INTEGER NOT NULL, Acquired INTEGER, Locked INTEGER NOT NULL, ListIndex INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    const-string v0, "CREATE TABLE messages (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, Uid INTEGER NOT NULL, Sender TEXT, Gamerpic TEXT, MessageType INTEGER NOT NULL, Body TEXT NOT NULL, Sent INTEGER NOT NULL, IsDirty INTEGER NOT NULL, IsRead INTEGER NOT NULL, DeleteMarker INTEGER NOT NULL, UNIQUE (AccountId,Uid));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, Title TEXT, Description TEXT, Date INTEGER NOT NULL, Flags INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v0, "CREATE TABLE beacons (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, FriendId INTEGER NOT NULL, TitleId TEXT NOT NULL, TitleName TEXT, TitleBoxart TEXT, Text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v0, "CREATE TABLE sent_messages (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, Recipients TEXT, MessageType INTEGER NOT NULL, Preview TEXT NOT NULL, Body TEXT NOT NULL, Sent INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const-string v0, "CREATE TABLE notify_states (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, LastUpdated INTEGER NOT NULL DEFAULT 0, Type INTEGER NOT NULL, Data TEXT NOT NULL DEFAULT \'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 248
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XboxLiveProvider: Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 253
    .local v0, "upgraded":Z
    const/16 v1, 0xd

    if-ge p2, v1, :cond_2

    .line 255
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    const-string v1, "XboxLiveProvider: upgrading for version 13"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 258
    :cond_1
    const-string v1, "ALTER TABLE profiles ADD COLUMN Zone TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    const-string v1, "ALTER TABLE games ADD COLUMN ListIndex INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x1

    .line 266
    :cond_2
    const/16 v1, 0xf

    if-ge p2, v1, :cond_4

    .line 268
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    const-string v1, "XboxLiveProvider: upgrading for version 15"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 271
    :cond_3
    const-string v1, "ALTER TABLE friends ADD COLUMN IsFavorite INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    .line 277
    :cond_4
    const/16 v1, 0x10

    if-ge p2, v1, :cond_6

    .line 279
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 280
    const-string v1, "XboxLiveProvider: upgrading for version 16"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 282
    :cond_5
    const-string v1, "ALTER TABLE profiles ADD COLUMN Tier TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x1

    .line 288
    :cond_6
    const/16 v1, 0x11

    if-ge p2, v1, :cond_8

    .line 290
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 291
    const-string v1, "XboxLiveProvider: upgrading for version 17"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 293
    :cond_7
    const-string v1, "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, Title TEXT, Description TEXT, Date INTEGER NOT NULL, Flags INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x1

    .line 304
    :cond_8
    const/16 v1, 0x12

    if-ge p2, v1, :cond_a

    .line 306
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 307
    const-string v1, "XboxLiveProvider: upgrading for version 18"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 309
    :cond_9
    const-string v1, "DELETE FROM games;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    const-string v1, "DELETE FROM achievements;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x1

    .line 315
    :cond_a
    const/16 v1, 0x13

    if-ge p2, v1, :cond_c

    .line 317
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 318
    const-string v1, "XboxLiveProvider: upgrading for version 19"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 320
    :cond_b
    const-string v1, "ALTER TABLE games ADD COLUMN BeaconSet INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    const-string v1, "ALTER TABLE games ADD COLUMN BeaconText TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x1

    .line 328
    :cond_c
    const/16 v1, 0x14

    if-ge p2, v1, :cond_e

    .line 330
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 331
    const-string v1, "XboxLiveProvider: upgrading for version 20"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 333
    :cond_d
    const-string v1, "CREATE TABLE beacons (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, FriendId INTEGER NOT NULL, TitleId TEXT NOT NULL, TitleName TEXT, TitleBoxart TEXT, Text TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    .line 345
    :cond_e
    const/16 v1, 0x15

    if-ge p2, v1, :cond_10

    .line 347
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 348
    const-string v1, "XboxLiveProvider: upgrading for version 20"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 350
    :cond_f
    const-string v1, "ALTER TABLE friends ADD COLUMN TitleId INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v1, "ALTER TABLE friends ADD COLUMN TitleName TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    const-string v1, "ALTER TABLE friends ADD COLUMN TitleUrl TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x1

    .line 360
    :cond_10
    const/16 v1, 0x16

    if-ge p2, v1, :cond_12

    .line 362
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 363
    const-string v1, "XboxLiveProvider: upgrading for version 21"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 365
    :cond_11
    const-string v1, "UPDATE games SET AchievementsStatus= 1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    .line 371
    :cond_12
    const/16 v1, 0x17

    if-ge p2, v1, :cond_14

    .line 373
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 374
    const-string v1, "XboxLiveProvider: upgrading for version 22"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 376
    :cond_13
    const-string v1, "ALTER TABLE messages ADD COLUMN Gamerpic TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x1

    .line 382
    :cond_14
    const/16 v1, 0x18

    if-ge p2, v1, :cond_16

    .line 384
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 385
    const-string v1, "XboxLiveProvider: upgrading for version 23"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 387
    :cond_15
    const-string v1, "CREATE TABLE sent_messages (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, Recipients TEXT, MessageType INTEGER NOT NULL, Preview TEXT NOT NULL, Body TEXT NOT NULL, Sent INTEGER NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x1

    .line 399
    :cond_16
    const/16 v1, 0x19

    if-ge p2, v1, :cond_18

    .line 401
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 402
    const-string v1, "XboxLiveProvider: upgrading for version 24"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 404
    :cond_17
    const-string v1, "ALTER TABLE profiles ADD COLUMN Name TEXT NOT NULL DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 406
    const-string v1, "ALTER TABLE profiles ADD COLUMN Location TEXT NOT NULL DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    const-string v1, "ALTER TABLE profiles ADD COLUMN Bio TEXT NOT NULL DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x1

    .line 414
    :cond_18
    const/16 v1, 0x1a

    if-ge p2, v1, :cond_1a

    .line 416
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 417
    const-string v1, "XboxLiveProvider: upgrading for version 25"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 419
    :cond_19
    const-string v1, "CREATE TABLE notify_states (_id INTEGER PRIMARY KEY AUTOINCREMENT, AccountId INTEGER NOT NULL, Type INTEGER NOT NULL, Data TEXT NOT NULL DEFAULT \'\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x1

    .line 428
    :cond_1a
    const/16 v1, 0x1b

    if-ge p2, v1, :cond_1c

    .line 430
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 431
    const-string v1, "XboxLiveProvider: upgrading for version 26"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 433
    :cond_1b
    const-string v1, "ALTER TABLE notify_states ADD COLUMN LastUpdated INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x1

    .line 439
    :cond_1c
    if-nez v0, :cond_1e

    .line 441
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 442
    const-string v1, "XboxLiveProvider: Recreating structure"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 444
    :cond_1d
    const-string v1, "DROP TABLE IF EXISTS achievements"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    const-string v1, "DROP TABLE IF EXISTS games"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    const-string v1, "DROP TABLE IF EXISTS friends"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 447
    const-string v1, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 448
    const-string v1, "DROP TABLE IF EXISTS profiles"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v1, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    const-string v1, "DROP TABLE IF EXISTS beacons"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const-string v1, "DROP TABLE IF EXISTS sent_messages"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    const-string v1, "DROP TABLE IF EXISTS notify_states"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, p1}, Lcom/akop/bach/provider/XboxLiveProvider$DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 456
    :cond_1e
    return-void
.end method
