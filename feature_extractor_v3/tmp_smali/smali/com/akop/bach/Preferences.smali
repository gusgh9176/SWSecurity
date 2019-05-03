.class public Lcom/akop/bach/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/Preferences$WidgetInfo;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final VERSION2_CRYPT_KEY:Ljava/lang/String; = "Caffeine|Spark"

.field private static sPrefs:Lcom/akop/bach/Preferences;


# instance fields
.field private mSecret:Lcom/akop/bach/Secret;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mV3Decryptor:Ljavax/crypto/Cipher;

.field private mV3Encryptor:Ljavax/crypto/Cipher;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/akop/bach/Preferences;->mSecret:Lcom/akop/bach/Secret;

    .line 63
    iput-object v1, p0, Lcom/akop/bach/Preferences;->mV3Encryptor:Ljavax/crypto/Cipher;

    .line 64
    iput-object v1, p0, Lcom/akop/bach/Preferences;->mV3Decryptor:Ljavax/crypto/Cipher;

    .line 71
    const-string v1, "Spark"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/Preferences;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lcom/akop/bach/Preferences;->initCryptors(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private decrypt(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 3
    .param p1, "ciphertext"    # Ljava/lang/String;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;,
            Lcom/akop/bach/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/akop/bach/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private encrypt(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 1
    .param p1, "plaintext"    # Ljava/lang/String;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/akop/bach/Preferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-class v1, Lcom/akop/bach/Preferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/akop/bach/Preferences;->sPrefs:Lcom/akop/bach/Preferences;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/akop/bach/Preferences;

    invoke-direct {v0, p0}, Lcom/akop/bach/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/akop/bach/Preferences;->sPrefs:Lcom/akop/bach/Preferences;

    .line 141
    :cond_0
    sget-object v0, Lcom/akop/bach/Preferences;->sPrefs:Lcom/akop/bach/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSecret()Lcom/akop/bach/Secret;
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Lcom/akop/bach/Preferences;->mSecret:Lcom/akop/bach/Secret;

    if-nez v2, :cond_1

    .line 91
    :try_start_0
    const-string v2, "com.akop.bach.PrivateSecret"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, "privateSecret":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/Secret;

    iput-object v2, p0, Lcom/akop/bach/Preferences;->mSecret:Lcom/akop/bach/Secret;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "privateSecret":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/akop/bach/Preferences;->mSecret:Lcom/akop/bach/Secret;

    if-nez v2, :cond_1

    .line 101
    new-instance v2, Lcom/akop/bach/GenericSecret;

    invoke-direct {v2}, Lcom/akop/bach/GenericSecret;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/Preferences;->mSecret:Lcom/akop/bach/Secret;

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/akop/bach/Preferences;->mSecret:Lcom/akop/bach/Secret;

    return-object v2

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "Could not instantiate PrivateSecret"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initCryptors(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 110
    invoke-direct {p0}, Lcom/akop/bach/Preferences;->getSecret()Lcom/akop/bach/Secret;

    move-result-object v1

    .line 112
    .local v1, "secret":Lcom/akop/bach/Secret;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 116
    const-string v0, "Caffeine|Spark"

    .line 118
    :cond_0
    invoke-interface {v1}, Lcom/akop/bach/Secret;->getKeygenAlgo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 119
    .local v5, "v3factory":Ljavax/crypto/SecretKeyFactory;
    const-string v7, "%s,%s"

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-interface {v1}, Lcom/akop/bach/Secret;->getCryptKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "v3key":Ljava/lang/String;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-interface {v1}, Lcom/akop/bach/Secret;->getSalt()[B

    move-result-object v8

    const/16 v9, 0x400

    const/16 v10, 0x100

    invoke-direct {v2, v7, v8, v9, v10}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 121
    .local v2, "v3KeySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v5, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 122
    .local v4, "v3Tmp":Ljavax/crypto/SecretKey;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    invoke-interface {v1}, Lcom/akop/bach/Secret;->getSecretKeyAlgo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 124
    .local v3, "v3Secret":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Lcom/akop/bach/Secret;->getCipherAlgo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    iput-object v7, p0, Lcom/akop/bach/Preferences;->mV3Encryptor:Ljavax/crypto/Cipher;

    .line 125
    iget-object v7, p0, Lcom/akop/bach/Preferences;->mV3Encryptor:Ljavax/crypto/Cipher;

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-interface {v1}, Lcom/akop/bach/Secret;->getIv()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v7, v11, v3, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 127
    invoke-interface {v1}, Lcom/akop/bach/Secret;->getCipherAlgo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    iput-object v7, p0, Lcom/akop/bach/Preferences;->mV3Decryptor:Ljavax/crypto/Cipher;

    .line 128
    iget-object v7, p0, Lcom/akop/bach/Preferences;->mV3Decryptor:Ljavax/crypto/Cipher;

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-interface {v1}, Lcom/akop/bach/Secret;->getIv()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v7, v12, v3, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 129
    return-void
.end method


# virtual methods
.method public addAccount(Lcom/akop/bach/BasicAccount;)V
    .locals 5
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "accountUuids"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "accountUuids":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 235
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "accountUuids"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    return-void

    .line 231
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public addWidget(Lcom/akop/bach/Preferences$WidgetInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/akop/bach/Preferences$WidgetInfo;

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgetAccountUuid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/akop/bach/Preferences$WidgetInfo;->widgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/akop/bach/Preferences$WidgetInfo;->account:Lcom/akop/bach/BasicAccount;

    invoke-virtual {v2}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgetAccountCn."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/akop/bach/Preferences$WidgetInfo;->widgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/akop/bach/Preferences$WidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    return-void
.end method

.method public anyAccounts()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "accountUuids"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "uuids":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method

.method public declared-synchronized deleteAccount(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/akop/bach/BasicAccount;->delete(Landroid/content/Context;)V

    .line 427
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "accountUuids"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "uuids":[Ljava/lang/String;
    array-length v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 446
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 432
    .local v4, "sb":Ljava/lang/StringBuffer;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 434
    .local v5, "uuid":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 436
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 437
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 443
    .end local v5    # "uuid":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 444
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "accountUuids"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "uuids":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public deleteWidget(I)V
    .locals 3
    .param p1, "widgetId"    # I

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgetAccountUuid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgetAccountCn."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    return-void
.end method

.method public dump()V
    .locals 4

    .prologue
    .line 205
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getAccount(J)Lcom/akop/bach/BasicAccount;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "accountUuids"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "uuids":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v4

    .line 162
    :cond_1
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "uuidList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "length":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 164
    aget-object v5, v2, v0

    invoke-static {p0, v5, p1, p2}, Lcom/akop/bach/BasicAccount;->isMatch(Lcom/akop/bach/Preferences;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    aget-object v4, v2, v0

    invoke-static {p0, v4}, Lcom/akop/bach/BasicAccount;->create(Lcom/akop/bach/Preferences;Ljava/lang/String;)Lcom/akop/bach/BasicAccount;

    move-result-object v4

    goto :goto_0

    .line 163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAccount(Ljava/lang/String;)Lcom/akop/bach/BasicAccount;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "accountUuids"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "uuids":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v1

    .line 150
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {p0, p1}, Lcom/akop/bach/BasicAccount;->create(Lcom/akop/bach/Preferences;Ljava/lang/String;)Lcom/akop/bach/BasicAccount;

    move-result-object v1

    goto :goto_0
.end method

.method public getAccounts()[Lcom/akop/bach/BasicAccount;
    .locals 8

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "accountUuids"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "uuids":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    .line 174
    :cond_0
    const/4 v5, 0x0

    new-array v0, v5, [Lcom/akop/bach/BasicAccount;

    .line 181
    :cond_1
    return-object v0

    .line 176
    :cond_2
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "uuidList":[Ljava/lang/String;
    array-length v5, v3

    new-array v0, v5, [Lcom/akop/bach/BasicAccount;

    .line 178
    .local v0, "accounts":[Lcom/akop/bach/BasicAccount;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v3

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 179
    aget-object v5, v3, v1

    invoke-static {p0, v5}, Lcom/akop/bach/BasicAccount;->create(Lcom/akop/bach/Preferences;Ljava/lang/String;)Lcom/akop/bach/BasicAccount;

    move-result-object v5

    aput-object v5, v0, v1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAllWidgetIds(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)[I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 268
    invoke-static {p1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 269
    .local v4, "prefSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v8, "widgetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, "key":Ljava/lang/String;
    const-string v5, "widgetAccountUuid."

    .line 274
    .local v5, "uuidPrefix":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 278
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "uuidPrefix":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 283
    .local v3, "n":I
    new-array v7, v3, [I

    .line 285
    .local v7, "wiArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 286
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_2
    return-object v7
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDefaultAccount()Lcom/akop/bach/BasicAccount;
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getAccounts()[Lcom/akop/bach/BasicAccount;

    move-result-object v0

    .line 193
    .local v0, "accounts":[Lcom/akop/bach/BasicAccount;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 194
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 195
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEncrypted(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/EncryptionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "ciphertext":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-object v2

    .line 336
    :cond_1
    const-string v3, "#3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 342
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/Preferences;->mV3Decryptor:Ljavax/crypto/Cipher;

    invoke-direct {p0, v2, v3}, Lcom/akop/bach/Preferences;->decrypt(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/akop/bach/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/akop/bach/EncryptionException;

    invoke-direct {v2, v1}, Lcom/akop/bach/EncryptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 348
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 350
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/akop/bach/EncryptionException;

    invoke-direct {v2, v1}, Lcom/akop/bach/EncryptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 352
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v1

    .line 354
    .local v1, "e":Lcom/akop/bach/util/Base64DecoderException;
    new-instance v2, Lcom/akop/bach/EncryptionException;

    invoke-direct {v2, v1}, Lcom/akop/bach/EncryptionException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/akop/bach/Preferences;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidget(I)Lcom/akop/bach/Preferences$WidgetInfo;
    .locals 8
    .param p1, "widgetId"    # I

    .prologue
    const/4 v7, 0x0

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "info":Lcom/akop/bach/Preferences$WidgetInfo;
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 244
    .local v3, "shp":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widgetAccountUuid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widgetAccountUuid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "uuid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widgetAccountCn."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "flatCn":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0, v4}, Lcom/akop/bach/Preferences;->getAccount(Ljava/lang/String;)Lcom/akop/bach/BasicAccount;

    move-result-object v0

    .line 252
    .local v0, "account":Lcom/akop/bach/BasicAccount;
    if-eqz v0, :cond_0

    .line 254
    new-instance v2, Lcom/akop/bach/Preferences$WidgetInfo;

    .end local v2    # "info":Lcom/akop/bach/Preferences$WidgetInfo;
    invoke-direct {v2}, Lcom/akop/bach/Preferences$WidgetInfo;-><init>()V

    .line 256
    .restart local v2    # "info":Lcom/akop/bach/Preferences$WidgetInfo;
    iput-object v0, v2, Lcom/akop/bach/Preferences$WidgetInfo;->account:Lcom/akop/bach/BasicAccount;

    .line 257
    iput p1, v2, Lcom/akop/bach/Preferences$WidgetInfo;->widgetId:I

    .line 258
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v2, Lcom/akop/bach/Preferences$WidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 263
    .end local v0    # "account":Lcom/akop/bach/BasicAccount;
    .end local v1    # "flatCn":Ljava/lang/String;
    .end local v4    # "uuid":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public isNewAccount(Lcom/akop/bach/BasicAccount;)Z
    .locals 3
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accountUuids"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsEncryptionRefresh(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "ciphertext":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "#3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public putEncrypted(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "plaintext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/EncryptionException;
        }
    .end annotation

    .prologue
    .line 364
    const/4 v2, 0x0

    .line 365
    .local v2, "value":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 371
    .local v0, "ciphertext":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/akop/bach/Preferences;->mV3Encryptor:Ljavax/crypto/Cipher;

    invoke-direct {p0, p3, v3}, Lcom/akop/bach/Preferences;->encrypt(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .end local v0    # "ciphertext":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    return-void

    .line 373
    .restart local v0    # "ciphertext":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/akop/bach/EncryptionException;

    invoke-direct {v3, v1}, Lcom/akop/bach/EncryptionException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 377
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 379
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lcom/akop/bach/EncryptionException;

    invoke-direct {v3, v1}, Lcom/akop/bach/EncryptionException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public declared-synchronized reserveAccountId()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 218
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "accountCounter"

    const-wide/16 v6, 0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 221
    .local v0, "counter":J
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 222
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "accountCounter"

    add-long v4, v0, v8

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-wide v0

    .line 218
    .end local v0    # "counter":J
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/akop/bach/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 414
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    return-void

    .line 415
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 416
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
