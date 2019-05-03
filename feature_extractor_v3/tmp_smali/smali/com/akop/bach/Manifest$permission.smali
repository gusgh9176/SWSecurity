.class public final Lcom/akop/bach/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final ACCESS_PSN_PROFILE:Ljava/lang/String; = "com.akop.permission.ACCESS_PSN_PROFILE"

.field public static final ACCESS_XBL_PROFILE:Ljava/lang/String; = "com.akop.permission.ACCESS_XBL_PROFILE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
