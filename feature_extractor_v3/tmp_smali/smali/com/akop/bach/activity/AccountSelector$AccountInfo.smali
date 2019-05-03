.class Lcom/akop/bach/activity/AccountSelector$AccountInfo;
.super Ljava/lang/Object;
.source "AccountSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/AccountSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountInfo"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public icon:Landroid/graphics/Bitmap;

.field public iconUrl:Ljava/lang/String;

.field public screenName:Ljava/lang/String;

.field final synthetic this$0:Lcom/akop/bach/activity/AccountSelector;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/AccountSelector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "iconUrl"    # Ljava/lang/String;
    .param p5, "uuid"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->this$0:Lcom/akop/bach/activity/AccountSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->screenName:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->description:Ljava/lang/String;

    .line 168
    iput-object p4, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->iconUrl:Ljava/lang/String;

    .line 169
    iput-object p5, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->uuid:Ljava/lang/String;

    .line 170
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->icon:Landroid/graphics/Bitmap;

    .line 171
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
