.class public Lcom/commonsware/android/arXiv/arXivDB;
.super Ljava/lang/Object;
.source "arXivDB.java"


# static fields
.field private static final CREATE_TABLE_FEEDS:Ljava/lang/String; = "create table if not exists feeds (feed_id integer primary key autoincrement, title text not null, shorttitle text not null, url text not null, count integer not null, unread integer not null);"

.field private static final CREATE_TABLE_FONTSIZE:Ljava/lang/String; = "create table if not exists fontsize (fontsize_id integer primary key autoincrement, fontsizeval integer not null);"

.field private static final CREATE_TABLE_HISTORY:Ljava/lang/String; = "create table if not exists history (history_id integer primary key autoincrement, displaytext text not null, url text not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "arXiv-V3"

.field private static final FEEDS_TABLE:Ljava/lang/String; = "feeds"

.field private static final FONTSIZE_TABLE:Ljava/lang/String; = "fontsize"

.field private static final HISTORY_TABLE:Ljava/lang/String; = "history"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    :try_start_0
    const-string v0, "arXiv-V3"

    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists history (history_id integer primary key autoincrement, displaytext text not null, url text not null);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists feeds (feed_id integer primary key autoincrement, title text not null, shorttitle text not null, url text not null, count integer not null, unread integer not null);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists fontsize (fontsize_id integer primary key autoincrement, fontsizeval integer not null);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public changeSize(I)Z
    .locals 13
    .param p1, "size"    # I

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "fontsize"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fontsize_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 69
    const-string v4, "fontsize"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 68
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 70
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 71
    .local v11, "numRows":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v11, :cond_0

    .line 78
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "numRows":I
    :goto_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v12, "values":Landroid/content/ContentValues;
    const-string v0, "fontsizeval"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "fontsize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 73
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "i":I
    .restart local v11    # "numRows":I
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 74
    .local v9, "fontsize_id":Ljava/lang/Long;
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "fontsize"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fontsize_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 74
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 86
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "fontsize_id":Ljava/lang/Long;
    .end local v10    # "i":I
    .end local v11    # "numRows":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 80
    .end local v12    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deleteFeed(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "feedId"    # Ljava/lang/Long;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feeds"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "feed_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteHistory(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "historyId"    # Ljava/lang/Long;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "history_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    const/4 v3, 0x0

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFeeds()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/commonsware/android/arXiv/Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v10, "feeds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/commonsware/android/arXiv/Feed;>;"
    :try_start_0
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feeds"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "feed_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 110
    const-string v4, "shorttitle"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "count"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "unread"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 109
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 112
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 113
    .local v12, "numRows":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v12, :cond_0

    .line 125
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 129
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v12    # "numRows":I
    :goto_1
    return-object v10

    .line 115
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v11    # "i":I
    .restart local v12    # "numRows":I
    :cond_0
    new-instance v9, Lcom/commonsware/android/arXiv/Feed;

    invoke-direct {v9}, Lcom/commonsware/android/arXiv/Feed;-><init>()V

    .line 116
    .local v9, "feed":Lcom/commonsware/android/arXiv/Feed;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/commonsware/android/arXiv/Feed;->feedId:J

    .line 117
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    .line 118
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    .line 119
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    .line 120
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/commonsware/android/arXiv/Feed;->count:I

    .line 121
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/commonsware/android/arXiv/Feed;->unread:I

    .line 122
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 127
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "feed":Lcom/commonsware/android/arXiv/Feed;
    .end local v11    # "i":I
    .end local v12    # "numRows":I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getHistory()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/commonsware/android/arXiv/History;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v10, "historys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/commonsware/android/arXiv/History;>;"
    :try_start_0
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "history_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 138
    const-string v4, "displaytext"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 137
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 140
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 141
    .local v12, "numRows":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v12, :cond_0

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 156
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v12    # "numRows":I
    :goto_1
    return-object v10

    .line 144
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v11    # "i":I
    .restart local v12    # "numRows":I
    :cond_0
    new-instance v9, Lcom/commonsware/android/arXiv/History;

    invoke-direct {v9}, Lcom/commonsware/android/arXiv/History;-><init>()V

    .line 145
    .local v9, "history":Lcom/commonsware/android/arXiv/History;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/commonsware/android/arXiv/History;->historyId:J

    .line 146
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/commonsware/android/arXiv/History;->displayText:Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/commonsware/android/arXiv/History;->url:Ljava/lang/String;

    .line 148
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 154
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "history":Lcom/commonsware/android/arXiv/History;
    .end local v11    # "i":I
    .end local v12    # "numRows":I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getSize()I
    .locals 13

    .prologue
    .line 160
    const/4 v12, 0x0

    .line 162
    .local v12, "size":I
    :try_start_0
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "fontsize"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fontsize_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 163
    const-string v4, "fontsizeval"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 162
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 165
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 166
    .local v11, "numRows":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v11, :cond_0

    .line 172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 177
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "numRows":I
    :goto_1
    return v12

    .line 168
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "i":I
    .restart local v11    # "numRows":I
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 169
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 174
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "numRows":I
    :catch_0
    move-exception v9

    .line 175
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "arXivDB"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public insertFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "shorttitle"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "count"    # I
    .param p5, "unread"    # I

    .prologue
    .line 181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "shorttitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "count"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v1, "unread"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    iget-object v1, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feeds"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertHistory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "displaytext"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "displaytext"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateFeed(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 5
    .param p1, "feedId"    # Ljava/lang/Long;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "shorttitle"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "count"    # I
    .param p6, "unread"    # I

    .prologue
    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "shorttitle"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "count"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v1, "unread"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    iget-object v1, p0, Lcom/commonsware/android/arXiv/arXivDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feeds"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "feed_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
