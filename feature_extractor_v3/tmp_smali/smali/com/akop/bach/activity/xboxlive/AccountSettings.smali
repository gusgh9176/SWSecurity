.class public Lcom/akop/bach/activity/xboxlive/AccountSettings;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettings.java"


# static fields
.field private static final PREFERENCE_RINGTONE:Ljava/lang/String; = "account_ringtone"


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mBeaconNotifications:I

.field private mBeaconNotifyPref:Landroid/preference/ListPreference;

.field private mCheckFreqPref:Landroid/preference/ListPreference;

.field private mCoverflowMode:I

.field private mCoverflowPref:Landroid/preference/ListPreference;

.field private mFriendNotifications:I

.field private mFriendNotifyPref:Landroid/preference/ListPreference;

.field private mMessageNotifications:Z

.field private mMessageNotifyPref:Landroid/preference/CheckBoxPreference;

.field private mRingtonePref:Landroid/preference/RingtonePreference;

.field private mShowApps:Z

.field private mShowAppsPref:Landroid/preference/CheckBoxPreference;

.field private mUpdateFrequency:I

.field private mVibrate:Z

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->onLoginSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/xboxlive/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/akop/bach/activity/xboxlive/AccountSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifications:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/akop/bach/activity/xboxlive/AccountSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifyPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/akop/bach/activity/xboxlive/AccountSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibrate:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/akop/bach/activity/xboxlive/AccountSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/akop/bach/activity/xboxlive/AccountSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mShowApps:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/akop/bach/activity/xboxlive/AccountSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mShowAppsPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/akop/bach/activity/xboxlive/AccountSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    return p1
.end method

.method static synthetic access$300(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->toggleNotificationSection()V

    return-void
.end method

.method static synthetic access$400(Lcom/akop/bach/activity/xboxlive/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/akop/bach/activity/xboxlive/AccountSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifications:I

    return p1
.end method

.method static synthetic access$600(Lcom/akop/bach/activity/xboxlive/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifyPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/akop/bach/activity/xboxlive/AccountSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifications:I

    return p1
.end method

.method static synthetic access$800(Lcom/akop/bach/activity/xboxlive/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$902(Lcom/akop/bach/activity/xboxlive/AccountSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/AccountSettings;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowMode:I

    return p1
.end method

.method public static actionEditSettings(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method private onLoginSettings()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v0, p0}, Lcom/akop/bach/XboxLiveAccount;->editLogin(Landroid/app/Activity;)V

    .line 270
    return-void
.end method

.method private saveSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 274
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v0

    .line 275
    .local v0, "prefs":Lcom/akop/bach/Preferences;
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4, v0}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 277
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v4}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 278
    .local v2, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v4, "account_ringtone"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "ringtone":Ljava/lang/String;
    iget v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getSyncPeriod()I

    move-result v5

    if-eq v4, v5, :cond_5

    const/4 v3, 0x1

    .line 282
    .local v3, "updateFreqChanged":Z
    :goto_0
    if-nez v3, :cond_0

    iget v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifications:I

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getFriendNotifications()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0, v4, v6}, Lcom/akop/bach/XboxLive$NotifyStates;->setFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;[J)V

    .line 285
    :cond_1
    if-nez v3, :cond_2

    iget-boolean v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifications:Z

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->isMessageNotificationEnabled()Z

    move-result v5

    if-eq v4, v5, :cond_3

    .line 286
    :cond_2
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0, v4, v6}, Lcom/akop/bach/XboxLive$NotifyStates;->setMessagesLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;[J)V

    .line 288
    :cond_3
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifications:I

    invoke-virtual {v4, v5}, Lcom/akop/bach/XboxLiveAccount;->setFriendNotifications(I)V

    .line 289
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifications:I

    invoke-virtual {v4, v5}, Lcom/akop/bach/XboxLiveAccount;->setBeaconNotifications(I)V

    .line 290
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-boolean v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifications:Z

    invoke-virtual {v4, v5}, Lcom/akop/bach/XboxLiveAccount;->setMessageNotifications(Z)V

    .line 292
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    invoke-virtual {v4, v5}, Lcom/akop/bach/XboxLiveAccount;->setSyncPeriod(I)V

    .line 293
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-boolean v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibrate:Z

    invoke-virtual {v4, v5}, Lcom/akop/bach/XboxLiveAccount;->setVibration(Z)V

    .line 294
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4, v1}, Lcom/akop/bach/XboxLiveAccount;->setRingtone(Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowMode:I

    invoke-virtual {v4, v5}, Lcom/akop/bach/XboxLiveAccount;->setCoverflowMode(I)V

    .line 296
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-boolean v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mShowApps:Z

    invoke-virtual {v4, v5}, Lcom/akop/bach/XboxLiveAccount;->setShowApps(Z)V

    .line 298
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/akop/bach/XboxLiveAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 300
    if-eqz v3, :cond_6

    .line 302
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->actionReschedule(Landroid/content/Context;)V

    .line 309
    :cond_4
    :goto_1
    return-void

    .line 280
    .end local v3    # "updateFreqChanged":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 306
    .restart local v3    # "updateFreqChanged":Z
    :cond_6
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 307
    const-string v4, "Update frequency did not change; not rescheduling"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private toggleNotificationSection()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 254
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    iget v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 255
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifyPref:Landroid/preference/ListPreference;

    iget v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 256
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mRingtonePref:Landroid/preference/RingtonePreference;

    iget v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifyPref:Landroid/preference/CheckBoxPreference;

    iget v3, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    if-lez v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 258
    return-void

    :cond_0
    move v0, v2

    .line 253
    goto :goto_0

    :cond_1
    move v0, v2

    .line 254
    goto :goto_1

    :cond_2
    move v0, v2

    .line 255
    goto :goto_2

    :cond_3
    move v0, v2

    .line 256
    goto :goto_3

    :cond_4
    move v1, v2

    .line 257
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 76
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "account"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 78
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "account"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/akop/bach/XboxLiveAccount;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 95
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getSyncPeriod()I

    move-result v5

    iput v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    .line 96
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->isVibrationEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibrate:Z

    .line 97
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getFriendNotifications()I

    move-result v5

    iput v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifications:I

    .line 98
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getBeaconNotifications()I

    move-result v5

    iput v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifications:I

    .line 99
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->isMessageNotificationEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifications:Z

    .line 100
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->isShowingApps()Z

    move-result v5

    iput-boolean v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mShowApps:Z

    .line 101
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getCoverflowMode()I

    move-result v5

    iput v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowMode:I

    .line 103
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getRingtone()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "ringtone":Ljava/lang/String;
    const v5, 0x7f040005

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->addPreferencesFromResource(I)V

    .line 106
    const v5, 0x7f08000f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v8}, Lcom/akop/bach/XboxLiveAccount;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    const-string v5, "login"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    new-instance v6, Lcom/akop/bach/activity/xboxlive/AccountSettings$1;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings$1;-><init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 118
    const-string v5, "account_check_frequency"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 120
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    iget v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mUpdateFrequency:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCheckFreqPref:Landroid/preference/ListPreference;

    new-instance v6, Lcom/akop/bach/activity/xboxlive/AccountSettings$2;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings$2;-><init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    :cond_1
    const-string v5, "account_friend_notifications"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    .line 142
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    iget v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifications:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mFriendNotifyPref:Landroid/preference/ListPreference;

    new-instance v6, Lcom/akop/bach/activity/xboxlive/AccountSettings$3;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings$3;-><init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    :cond_2
    const-string v5, "account_beacon_notifications"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifyPref:Landroid/preference/ListPreference;

    if-eqz v5, :cond_3

    .line 161
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifyPref:Landroid/preference/ListPreference;

    iget v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifications:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 162
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifyPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifyPref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mBeaconNotifyPref:Landroid/preference/ListPreference;

    new-instance v6, Lcom/akop/bach/activity/xboxlive/AccountSettings$4;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings$4;-><init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    :cond_3
    const-string v5, "account_coverflow_mode"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowPref:Landroid/preference/ListPreference;

    if-eqz v5, :cond_4

    .line 182
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowPref:Landroid/preference/ListPreference;

    iget v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowMode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowPref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mCoverflowPref:Landroid/preference/ListPreference;

    new-instance v6, Lcom/akop/bach/activity/xboxlive/AccountSettings$5;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings$5;-><init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    :cond_4
    const-string v5, "account_message_notifications"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifyPref:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    .line 203
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifyPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifications:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mMessageNotifyPref:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/akop/bach/activity/xboxlive/AccountSettings$6;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings$6;-><init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    :cond_5
    const-string v5, "account_vibrate"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_6

    .line 217
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibrate:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/akop/bach/activity/xboxlive/AccountSettings$7;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings$7;-><init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    :cond_6
    const-string v5, "account_show_apps"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mShowAppsPref:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_7

    .line 231
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mShowAppsPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mShowApps:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 232
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mShowAppsPref:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/akop/bach/activity/xboxlive/AccountSettings$8;

    invoke-direct {v6, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings$8;-><init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    :cond_7
    const-string v5, "account_ringtone"

    invoke-virtual {p0, v5}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/RingtonePreference;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mRingtonePref:Landroid/preference/RingtonePreference;

    .line 245
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v5}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 246
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "account_ringtone"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->toggleNotificationSection()V

    .line 249
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "ringtone":Ljava/lang/String;
    :goto_1
    return-void

    .line 80
    :cond_8
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 82
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "uriPart":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 85
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 86
    .local v0, "accountId":J
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v5

    check-cast v5, Lcom/akop/bach/XboxLiveAccount;

    iput-object v5, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    goto/16 :goto_0

    .line 91
    .end local v0    # "accountId":J
    .end local v4    # "uriPart":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->finish()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 314
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->saveSettings()V

    .line 317
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
