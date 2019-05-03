.class public abstract Lcom/akop/bach/BasicAccount;
.super Ljava/lang/Object;
.source "BasicAccount.java"

# interfaces
.implements Lcom/akop/bach/Account;


# static fields
.field public static final AUTOSYNC_DEFAULT_PERIOD:I = 0xf

.field public static final AUTOSYNC_DISABLED:I


# instance fields
.field private mDeleted:Z

.field private mDirtyIconUrl:Z

.field private mDirtySyncPeriodMin:Z

.field private mIconUrl:Ljava/lang/String;

.field protected mId:J

.field private mSyncPeriodMin:I

.field protected mUuid:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    .line 62
    invoke-static {p1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/Preferences;->reserveAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/BasicAccount;->mId:J

    .line 63
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    .line 65
    iput v2, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/BasicAccount;->mIconUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/akop/bach/BasicAccount;->onClearDirtyFlags()V

    .line 69
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/BasicAccount;->mId:J

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtyIconUrl:Z

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/BasicAccount;->mIconUrl:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/akop/bach/BasicAccount;->mDirtySyncPeriodMin:Z

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    .line 295
    return-void

    :cond_0
    move v0, v2

    .line 288
    goto :goto_0

    :cond_1
    move v0, v2

    .line 290
    goto :goto_1

    :cond_2
    move v1, v2

    .line 293
    goto :goto_2
.end method

.method protected constructor <init>(Lcom/akop/bach/Preferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    .line 73
    iput-object p2, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p1}, Lcom/akop/bach/BasicAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 76
    return-void
.end method

.method public static create(Lcom/akop/bach/Preferences;Ljava/lang/String;)Lcom/akop/bach/BasicAccount;
    .locals 7
    .param p0, "preferences"    # Lcom/akop/bach/Preferences;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-static {p0, p1}, Lcom/akop/bach/BasicAccount;->getClass(Lcom/akop/bach/Preferences;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "accountClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    move-object v4, v5

    .line 134
    :goto_0
    return-object v4

    .line 124
    :cond_0
    const/4 v4, 0x2

    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v6, Lcom/akop/bach/Preferences;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    .line 125
    .local v3, "pcClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 127
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    const/4 v6, 0x1

    aput-object p1, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/BasicAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "pcClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v4, v5

    .line 134
    goto :goto_0
.end method

.method private static getClass(Lcom/akop/bach/Preferences;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "preferences"    # Lcom/akop/bach/Preferences;
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akop/bach/Preferences;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v2

    .line 105
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isMatch(Lcom/akop/bach/Preferences;Ljava/lang/String;J)Z
    .locals 4
    .param p0, "preferences"    # Lcom/akop/bach/Preferences;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canOpenMessage(Landroid/content/Context;J)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUid"    # J

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public abstract cleanUp(Landroid/content/Context;)V
.end method

.method public abstract create(Landroid/content/Context;Landroid/content/ContentValues;)V
.end method

.method public abstract createServiceClient()Lcom/akop/bach/service/ServiceClient;
.end method

.method public final delete(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const-class v5, Lcom/akop/bach/BasicAccount;

    monitor-enter v5

    .line 232
    :try_start_0
    invoke-static {p1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    .line 236
    invoke-static {p1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 238
    .local v2, "prefSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 239
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 243
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "prefSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 242
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "prefSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public abstract edit(Landroid/content/Context;)V
.end method

.method public abstract editLogin(Landroid/app/Activity;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 249
    instance-of v0, p1, Lcom/akop/bach/BasicAccount;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Lcom/akop/bach/BasicAccount;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/akop/bach/BasicAccount;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/akop/bach/BasicAccount;->mId:J

    return-wide v0
.end method

.method public abstract getLogonId()Ljava/lang/String;
.end method

.method public abstract getProfileUri()Landroid/net/Uri;
.end method

.method public abstract getScreenName()Ljava/lang/String;
.end method

.method public final getSyncPeriod()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    return v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public final isAutoSyncEnabled()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isValid()Z
.end method

.method protected onClearDirtyFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtyIconUrl:Z

    .line 278
    iput-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtySyncPeriodMin:Z

    .line 279
    return-void
.end method

.method protected onLoad(Lcom/akop/bach/Preferences;)V
    .locals 2
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".iconUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/akop/bach/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/BasicAccount;->mIconUrl:Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".syncPeriod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/akop/bach/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    .line 264
    return-void
.end method

.method protected onSave(Lcom/akop/bach/Preferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "p"    # Lcom/akop/bach/Preferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtyIconUrl:Z

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".iconUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/BasicAccount;->mIconUrl:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtySyncPeriodMin:Z

    if-eqz v0, :cond_1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".syncPeriod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 273
    :cond_1
    return-void
.end method

.method public abstract open(Landroid/content/Context;)V
.end method

.method public final refresh(Lcom/akop/bach/Preferences;)V
    .locals 4
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "Account/refresh: Account deleted; ignoring"

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/BasicAccount;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/akop/bach/BasicAccount;->onClearDirtyFlags()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/akop/bach/BasicAccount;->onLoad(Lcom/akop/bach/Preferences;)V

    goto :goto_0
.end method

.method public final save(Lcom/akop/bach/Preferences;)V
    .locals 6
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;

    .prologue
    .line 199
    iget-boolean v1, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "Account/save: Account deleted; ignoring"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v1, "Account/save: Saving account %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_1
    const-class v2, Lcom/akop/bach/BasicAccount;

    monitor-enter v2

    .line 210
    :try_start_0
    invoke-virtual {p1}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1, p0}, Lcom/akop/bach/Preferences;->isNewAccount(Lcom/akop/bach/BasicAccount;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p1, p0}, Lcom/akop/bach/Preferences;->addAccount(Lcom/akop/bach/BasicAccount;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/akop/bach/BasicAccount;->mId:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".class"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/BasicAccount;->onSave(Lcom/akop/bach/Preferences;Landroid/content/SharedPreferences$Editor;)V

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    invoke-virtual {p0}, Lcom/akop/bach/BasicAccount;->onClearDirtyFlags()V

    .line 224
    monitor-exit v2

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setIconUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/akop/bach/BasicAccount;->mIconUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtyIconUrl:Z

    if-eqz v0, :cond_0

    .line 182
    iput-object p1, p0, Lcom/akop/bach/BasicAccount;->mIconUrl:Ljava/lang/String;

    .line 183
    :cond_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setSyncPeriod(I)V
    .locals 1
    .param p1, "minutes"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtySyncPeriodMin:Z

    if-eqz v0, :cond_0

    .line 188
    iput p1, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    .line 189
    :cond_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract updateProfile(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method public abstract validate(Landroid/content/Context;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    iget-wide v4, p0, Lcom/akop/bach/BasicAccount;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget-object v0, p0, Lcom/akop/bach/BasicAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDeleted:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 305
    iget-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtyIconUrl:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 306
    iget-object v0, p0, Lcom/akop/bach/BasicAccount;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Lcom/akop/bach/BasicAccount;->mDirtySyncPeriodMin:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 308
    iget v0, p0, Lcom/akop/bach/BasicAccount;->mSyncPeriodMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    return-void

    :cond_0
    move v0, v2

    .line 303
    goto :goto_0

    :cond_1
    move v0, v2

    .line 305
    goto :goto_1

    :cond_2
    move v1, v2

    .line 307
    goto :goto_2
.end method
