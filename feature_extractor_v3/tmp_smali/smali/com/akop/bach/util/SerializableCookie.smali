.class public Lcom/akop/bach/util/SerializableCookie;
.super Ljava/lang/Object;
.source "SerializableCookie.java"

# interfaces
.implements Lorg/apache/http/cookie/Cookie;
.implements Ljava/io/Externalizable;


# static fields
.field private static final COMMENT:I = 0x4

.field private static final COMMENT_URL:I = 0x8

.field private static final DOMAIN:I = 0x20

.field private static final EXPIRY_DATE:I = 0x10

.field private static final NAME:I = 0x1

.field private static final PATH:I = 0x40

.field private static final PORTS:I = 0x80

.field private static final VALUE:I = 0x2


# instance fields
.field private transient cookie:Lorg/apache/http/cookie/Cookie;

.field private transient nullMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/cookie/Cookie;)V
    .locals 1
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 57
    iput-object p1, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    .line 58
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPorts()[I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->isPersistent()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 14
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v12

    iput v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 172
    const/4 v7, 0x0

    .line 173
    .local v7, "name":Ljava/lang/String;
    const/4 v10, 0x0

    .line 174
    .local v10, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 176
    .local v1, "comment":Ljava/lang/String;
    const/4 v3, 0x0

    .line 178
    .local v3, "expiryDate":Ljava/util/Date;
    const/4 v2, 0x0

    .line 179
    .local v2, "domain":Ljava/lang/String;
    const/4 v8, 0x0

    .line 180
    .local v8, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 181
    .local v9, "ports":[I
    const/4 v5, 0x0

    .line 182
    .local v5, "isSecure":Z
    const/4 v11, 0x0

    .line 184
    .local v11, "version":I
    iget v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_0

    .line 185
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 187
    :cond_0
    iget v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_1

    .line 188
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 190
    :cond_1
    iget v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_2

    .line 191
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_2
    iget v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_3

    .line 195
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    .line 197
    :cond_3
    iget v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v12, v12, 0x10

    if-nez v12, :cond_4

    .line 198
    new-instance v3, Ljava/util/Date;

    .end local v3    # "expiryDate":Ljava/util/Date;
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v12

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 201
    .restart local v3    # "expiryDate":Ljava/util/Date;
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    .line 203
    iget v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v12, v12, 0x20

    if-nez v12, :cond_5

    .line 204
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 206
    :cond_5
    iget v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v12, v12, 0x40

    if-nez v12, :cond_6

    .line 207
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 209
    :cond_6
    iget v12, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_7

    .line 211
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v6

    .line 212
    .local v6, "len":I
    const/16 v12, 0xa

    if-ge v6, v12, :cond_7

    .line 214
    new-array v9, v6, [I

    .line 215
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_7

    .line 216
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v12

    aput v12, v9, v4

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    .end local v4    # "i":I
    .end local v6    # "len":I
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v5

    .line 221
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v11

    .line 223
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, v7, v10}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v0, "bc":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 227
    invoke-virtual {v0, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 229
    invoke-virtual {v0, v11}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 231
    iput-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    .line 232
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    if-nez v0, :cond_0

    .line 238
    const-string v0, "null"

    .line 240
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/util/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 122
    iget v6, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_0
    or-int/2addr v4, v6

    iput v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 123
    iget v6, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const/4 v4, 0x2

    :goto_1
    or-int/2addr v4, v6

    iput v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 124
    iget v6, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getComment()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v4, 0x4

    :goto_2
    or-int/2addr v4, v6

    iput v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 125
    iget v6, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    const/16 v4, 0x8

    :goto_3
    or-int/2addr v4, v6

    iput v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 126
    iget v6, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_c

    const/16 v4, 0x10

    :goto_4
    or-int/2addr v4, v6

    iput v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 127
    iget v6, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const/16 v4, 0x20

    :goto_5
    or-int/2addr v4, v6

    iput v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 128
    iget v6, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    const/16 v4, 0x40

    :goto_6
    or-int/2addr v4, v6

    iput v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 129
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getPorts()[I

    move-result-object v6

    if-nez v6, :cond_0

    const/16 v5, 0x80

    :cond_0
    or-int/2addr v4, v5

    iput v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    .line 131
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 133
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 136
    :cond_1
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 139
    :cond_2
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 142
    :cond_3
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 145
    :cond_4
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_5

    .line 146
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->isPersistent()Z

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 150
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_6

    .line 151
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 153
    :cond_6
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_7

    .line 154
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 156
    :cond_7
    iget v4, p0, Lcom/akop/bach/util/SerializableCookie;->nullMask:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_f

    .line 158
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getPorts()[I

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 159
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getPorts()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_f

    aget v3, v0, v1

    .line 160
    .local v3, "p":I
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":I
    :cond_8
    move v4, v5

    .line 122
    goto/16 :goto_0

    :cond_9
    move v4, v5

    .line 123
    goto/16 :goto_1

    :cond_a
    move v4, v5

    .line 124
    goto/16 :goto_2

    :cond_b
    move v4, v5

    .line 125
    goto/16 :goto_3

    :cond_c
    move v4, v5

    .line 126
    goto/16 :goto_4

    :cond_d
    move v4, v5

    .line 127
    goto/16 :goto_5

    :cond_e
    move v4, v5

    .line 128
    goto/16 :goto_6

    .line 163
    :cond_f
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->isSecure()Z

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/akop/bach/util/SerializableCookie;->getVersion()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 165
    return-void
.end method
