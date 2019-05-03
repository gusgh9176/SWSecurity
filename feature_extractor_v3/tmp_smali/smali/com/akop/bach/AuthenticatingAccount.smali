.class public abstract Lcom/akop/bach/AuthenticatingAccount;
.super Lcom/akop/bach/BasicAccount;
.source "AuthenticatingAccount.java"


# static fields
.field private static final sEmailAddressValidator:Ljava/util/regex/Pattern;


# instance fields
.field private mDirtyEmailAddress:Z

.field private mDirtyPassword:Z

.field private mEmailAddress:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "^[.\\w!#$%&\'*+/=?`{|}~^-]+@[A-Z0-9-]+(?:\\.[A-Z0-9-]+)*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/AuthenticatingAccount;->sEmailAddressValidator:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/akop/bach/BasicAccount;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mPassword:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/akop/bach/BasicAccount;-><init>(Landroid/os/Parcel;)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyEmailAddress:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyPassword:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mPassword:Ljava/lang/String;

    .line 178
    return-void

    :cond_0
    move v0, v2

    .line 174
    goto :goto_0

    :cond_1
    move v1, v2

    .line 176
    goto :goto_1
.end method

.method public constructor <init>(Lcom/akop/bach/Preferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/BasicAccount;-><init>(Lcom/akop/bach/Preferences;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static isEmailAddressValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Lcom/akop/bach/AuthenticatingAccount;->sEmailAddressValidator:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static isPasswordNonEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 97
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/akop/bach/AuthenticatingAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/akop/bach/AuthenticatingAccount;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClearDirtyFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-super {p0}, Lcom/akop/bach/BasicAccount;->onClearDirtyFlags()V

    .line 160
    iput-boolean v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyEmailAddress:Z

    .line 161
    iput-boolean v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyPassword:Z

    .line 162
    return-void
.end method

.method protected onLoad(Lcom/akop/bach/Preferences;)V
    .locals 6
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;

    .prologue
    const/4 v5, 0x1

    .line 133
    invoke-super {p0, p1}, Lcom/akop/bach/BasicAccount;->onLoad(Lcom/akop/bach/Preferences;)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/akop/bach/AuthenticatingAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".emailAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "emailAddressKey":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/akop/bach/AuthenticatingAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".password"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "passwordKey":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/akop/bach/Preferences;->getEncrypted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v2}, Lcom/akop/bach/Preferences;->getEncrypted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/akop/bach/AuthenticatingAccount;->mPassword:Ljava/lang/String;
    :try_end_0
    .catch Lcom/akop/bach/EncryptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/akop/bach/Preferences;->needsEncryptionRefresh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    iput-boolean v5, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyEmailAddress:Z

    .line 151
    :cond_1
    invoke-virtual {p1, v2}, Lcom/akop/bach/Preferences;->needsEncryptionRefresh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iput-boolean v5, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyPassword:Z

    .line 153
    :cond_2
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lcom/akop/bach/EncryptionException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/akop/bach/EncryptionException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSave(Lcom/akop/bach/Preferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1, "p"    # Lcom/akop/bach/Preferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/akop/bach/BasicAccount;->onSave(Lcom/akop/bach/Preferences;Landroid/content/SharedPreferences$Editor;)V

    .line 107
    :try_start_0
    iget-boolean v1, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyEmailAddress:Z

    if-eqz v1, :cond_1

    .line 109
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "AuthenticatingAccount/onSave: Email address dirty; saving"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/akop/bach/AuthenticatingAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".emailAddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2}, Lcom/akop/bach/Preferences;->putEncrypted(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    iget-boolean v1, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyPassword:Z

    if-eqz v1, :cond_3

    .line 117
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "AuthenticatingAccount/onSave: Password dirty; saving"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 120
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/akop/bach/AuthenticatingAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/AuthenticatingAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2}, Lcom/akop/bach/Preferences;->putEncrypted(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/akop/bach/EncryptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_3
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lcom/akop/bach/EncryptionException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-virtual {v0}, Lcom/akop/bach/EncryptionException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyEmailAddress:Z

    .line 74
    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mPassword:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/akop/bach/AuthenticatingAccount;->mPassword:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyPassword:Z

    .line 83
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-super {p0, p1, p2}, Lcom/akop/bach/BasicAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    iget-boolean v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyEmailAddress:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 186
    iget-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-boolean v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mDirtyPassword:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    iget-object v0, p0, Lcom/akop/bach/AuthenticatingAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return-void

    :cond_0
    move v0, v2

    .line 185
    goto :goto_0

    :cond_1
    move v1, v2

    .line 187
    goto :goto_1
.end method
