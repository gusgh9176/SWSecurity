.class public Lcom/akop/bach/activity/playstation/AccountSettings;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettings.java"


# static fields
.field private static final PREFERENCE_RINGTONE:Ljava/lang/String; = "account_ringtone"


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mCheckFreqPref:Landroid/preference/ListPreference;

.field private mFriendNotifications:I

.field private mFriendNotifyPref:Landroid/preference/ListPreference;

.field private mLocale:Ljava/lang/String;

.field private mLocalePref:Landroid/preference/ListPreference;

.field private mPsnServer:Ljava/lang/String;

.field private mPsnServerPref:Landroid/preference/ListPreference;

.field private mRingtonePref:Landroid/preference/RingtonePreference;

.field private mUpdateFrequency:I

.field private mVibrate:Z

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/playstation/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->onLoginSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/akop/bach/activity/playstation/AccountSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mUpdateFrequency:I

    return p1
.end method

.method static synthetic access$300(Lcom/akop/bach/activity/playstation/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->toggleNotificationSection()V

    return-void
.end method

.method static synthetic access$400(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocalePref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/akop/bach/activity/playstation/AccountSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/akop/bach/activity/playstation/AccountSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifications:I

    return p1
.end method

.method static synthetic access$802(Lcom/akop/bach/activity/playstation/AccountSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibrate:Z

    return p1
.end method

.method static synthetic access$900(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/AccountSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public static actionEditSettings(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method private onLoginSettings()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v0, p0}, Lcom/akop/bach/PsnAccount;->editLogin(Landroid/app/Activity;)V

    .line 217
    return-void
.end method

.method private saveSettings()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 221
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v8

    .line 222
    .local v8, "prefs":Lcom/akop/bach/Preferences;
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1, v8}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 224
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 225
    .local v10, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "account_ringtone"

    invoke-interface {v10, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "ringtone":Ljava/lang/String;
    iget v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mUpdateFrequency:I

    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getSyncPeriod()I

    move-result v5

    if-eq v1, v5, :cond_1

    move v11, v2

    .line 229
    .local v11, "updateFreqChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getPsnServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mPsnServer:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v6, "buffer":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 241
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 245
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 248
    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v11    # "updateFreqChanged":Z
    :cond_1
    move v11, v3

    .line 227
    goto :goto_0

    .line 254
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v11    # "updateFreqChanged":Z
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_3
    :try_start_1
    sget-object v1, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GameId IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_2
    :try_start_2
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v3}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    :goto_3
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/PsnAccount;->setLastGameUpdate(J)V

    .line 281
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mPsnServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setPsnServer(Ljava/lang/String;)V

    .line 284
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_4
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setLocale(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    iget v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifications:I

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setFriendNotifications(I)V

    .line 286
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    iget v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mUpdateFrequency:I

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setSyncPeriod(I)V

    .line 287
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-boolean v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibrate:Z

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setVibration(Z)V

    .line 288
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1, v9}, Lcom/akop/bach/PsnAccount;->setRingtone(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 292
    if-eqz v11, :cond_6

    .line 294
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->actionReschedule(Landroid/content/Context;)V

    .line 301
    :cond_5
    :goto_4
    return-void

    .line 298
    :cond_6
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 299
    const-string v1, "Update frequency did not change; not rescheduling"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_4

    .line 273
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_3

    .line 263
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private toggleNotificationSection()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    iget-object v3, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mUpdateFrequency:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 203
    iget-object v3, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    iget v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mUpdateFrequency:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mRingtonePref:Landroid/preference/RingtonePreference;

    iget v3, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mUpdateFrequency:I

    if-lez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 205
    return-void

    :cond_0
    move v0, v2

    .line 202
    goto :goto_0

    :cond_1
    move v0, v2

    .line 203
    goto :goto_1

    :cond_2
    move v1, v2

    .line 204
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 77
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "account"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 79
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "account"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/akop/bach/PsnAccount;

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 96
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getPsnServer()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mPsnServer:Ljava/lang/String;

    .line 97
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getLocale()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocale:Ljava/lang/String;

    .line 98
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getSyncPeriod()I

    move-result v5

    iput v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mUpdateFrequency:I

    .line 99
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->isVibrationEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibrate:Z

    .line 100
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getFriendNotifications()I

    move-result v5

    iput v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifications:I

    .line 102
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getRingtone()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "ringtone":Ljava/lang/String;
    const/high16 v5, 0x7f040000

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/playstation/AccountSettings;->addPreferencesFromResource(I)V

    .line 105
    const v5, 0x7f08000f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v8}, Lcom/akop/bach/PsnAccount;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/akop/bach/activity/playstation/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/playstation/AccountSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    const-string v5, "login"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/playstation/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    new-instance v6, Lcom/akop/bach/activity/playstation/AccountSettings$1;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/playstation/AccountSettings$1;-><init>(Lcom/akop/bach/activity/playstation/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    const-string v5, "account_check_frequency"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/playstation/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    iget v6, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mUpdateFrequency:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 120
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    new-instance v6, Lcom/akop/bach/activity/playstation/AccountSettings$2;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/playstation/AccountSettings$2;-><init>(Lcom/akop/bach/activity/playstation/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    :cond_1
    const-string v5, "account_locale"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/playstation/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocalePref:Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    .line 141
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocalePref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocalePref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocalePref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mLocalePref:Landroid/preference/ListPreference;

    new-instance v6, Lcom/akop/bach/activity/playstation/AccountSettings$3;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/playstation/AccountSettings$3;-><init>(Lcom/akop/bach/activity/playstation/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    :cond_2
    const-string v5, "account_friend_notifications"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/playstation/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    if-eqz v5, :cond_3

    .line 161
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    iget v6, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifications:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 162
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    new-instance v6, Lcom/akop/bach/activity/playstation/AccountSettings$4;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/playstation/AccountSettings$4;-><init>(Lcom/akop/bach/activity/playstation/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    :cond_3
    const-string v5, "account_vibrate"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/playstation/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_4

    .line 180
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibrate:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/akop/bach/activity/playstation/AccountSettings$5;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/playstation/AccountSettings$5;-><init>(Lcom/akop/bach/activity/playstation/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 192
    :cond_4
    const-string v5, "account_ringtone"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/playstation/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/RingtonePreference;

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mRingtonePref:Landroid/preference/RingtonePreference;

    .line 194
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v5}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 195
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "account_ringtone"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->toggleNotificationSection()V

    .line 198
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "ringtone":Ljava/lang/String;
    :goto_1
    return-void

    .line 81
    :cond_5
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 83
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "uriPart":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 86
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 87
    .local v0, "accountId":J
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v5

    check-cast v5, Lcom/akop/bach/PsnAccount;

    iput-object v5, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    goto/16 :goto_0

    .line 92
    .end local v0    # "accountId":J
    .end local v4    # "uriPart":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->finish()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 313
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->saveSettings()V

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 307
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 308
    return-void
.end method
