.class public interface abstract Lcom/akop/bach/Secret;
.super Ljava/lang/Object;
.source "Secret.java"


# virtual methods
.method public abstract getCipherAlgo()Ljava/lang/String;
.end method

.method public abstract getCryptKey()Ljava/lang/String;
.end method

.method public abstract getIv()[B
.end method

.method public abstract getKeygenAlgo()Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getSalt()[B
.end method

.method public abstract getSecretKeyAlgo()Ljava/lang/String;
.end method
