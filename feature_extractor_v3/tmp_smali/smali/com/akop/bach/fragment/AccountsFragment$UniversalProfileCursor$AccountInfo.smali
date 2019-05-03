.class Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;
.super Ljava/lang/Object;
.source "AccountsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public screenName:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->screenName:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->description:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->iconUrl:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->uuid:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->uri:Landroid/net/Uri;

    .line 112
    return-void
.end method
