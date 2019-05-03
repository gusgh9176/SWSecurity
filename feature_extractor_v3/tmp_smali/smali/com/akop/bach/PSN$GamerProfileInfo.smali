.class public final Lcom/akop/bach/PSN$GamerProfileInfo;
.super Ljava/lang/Object;
.source "PSN.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/PSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamerProfileInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7c497f216c768c1aL


# instance fields
.field public AvatarUrl:Ljava/lang/String;

.field public BronzeTrophies:I

.field public GoldTrophies:I

.field public Level:I

.field public OnlineId:Ljava/lang/String;

.field public OnlineStatus:I

.field public PlatinumTrophies:I

.field public Playing:Ljava/lang/String;

.field public Progress:I

.field public SilverTrophies:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
