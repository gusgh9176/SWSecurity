.class public Lcom/akop/bach/GenericSecret;
.super Ljava/lang/Object;
.source "GenericSecret.java"

# interfaces
.implements Lcom/akop/bach/Secret;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipherAlgo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "AES/CBC/PKCS5Padding"

    return-object v0
.end method

.method public getCryptKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "TheOwlsAreNotWhatTheySeem"

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        -0x72t
        0x35t
        0x54t
        -0x52t
        0x2bt
        0x5at
        -0x5dt
        -0x8t
        -0xdt
        0x71t
        -0x11t
        0x9t
        -0x68t
        -0xct
        -0x4ft
        0x11t
    .end array-data
.end method

.method public getKeygenAlgo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "PBEWITHSHAAND256BITAES-CBC-BC"

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "WithoutChemicalsHePoints"

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        -0x4ft
        0x46t
        -0x5ft
        0xdt
        0xbt
        0x37t
        -0x77t
        -0x48t
        0x20t
        -0x6ct
        -0x13t
        -0x55t
        -0x2ft
        0x0t
        -0x75t
        0x73t
        0xdt
        0x47t
        0xat
        -0x2at
    .end array-data
.end method

.method public getSecretKeyAlgo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "AES"

    return-object v0
.end method
