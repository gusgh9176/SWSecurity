.class Lcom/akop/bach/activity/NewAccount$TypeInfo;
.super Ljava/lang/Object;
.source "NewAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/NewAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeInfo"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public isEnabled:Z

.field final synthetic this$0:Lcom/akop/bach/activity/NewAccount;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/NewAccount;Ljava/lang/String;)V
    .locals 2
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-object p1, p0, Lcom/akop/bach/activity/NewAccount$TypeInfo;->this$0:Lcom/akop/bach/activity/NewAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/activity/NewAccount$TypeInfo;->isEnabled:Z

    .line 169
    iput-object p2, p0, Lcom/akop/bach/activity/NewAccount$TypeInfo;->title:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/akop/bach/activity/NewAccount$TypeInfo;->intent:Landroid/content/Intent;

    .line 171
    iput-object v1, p0, Lcom/akop/bach/activity/NewAccount$TypeInfo;->description:Ljava/lang/String;

    .line 172
    return-void
.end method
