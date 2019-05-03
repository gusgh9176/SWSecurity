.class Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
.super Ljava/lang/Object;
.source "MessageSelectRecipients.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FriendItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d33fe9c0bad9478L


# instance fields
.field public gamertag:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public isSelected:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;-><init>()V

    return-void
.end method
