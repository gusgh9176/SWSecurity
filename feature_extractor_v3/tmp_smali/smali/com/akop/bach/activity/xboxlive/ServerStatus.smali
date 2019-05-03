.class public Lcom/akop/bach/activity/xboxlive/ServerStatus;
.super Landroid/app/Activity;
.source "ServerStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;-><init>(Lcom/akop/bach/activity/xboxlive/ServerStatus;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mHandler:Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;

    .line 90
    new-instance v0, Lcom/akop/bach/activity/xboxlive/ServerStatus$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/ServerStatus$1;-><init>(Lcom/akop/bach/activity/xboxlive/ServerStatus;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-void
.end method

.method static synthetic access$002(Lcom/akop/bach/activity/xboxlive/ServerStatus;Lcom/akop/bach/XboxLive$LiveStatusInfo;)Lcom/akop/bach/XboxLive$LiveStatusInfo;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/ServerStatus;
    .param p1, "x1"    # Lcom/akop/bach/XboxLive$LiveStatusInfo;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/xboxlive/ServerStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/ServerStatus;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/akop/bach/activity/xboxlive/ServerStatus;)Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/ServerStatus;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mHandler:Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;

    return-object v0
.end method

.method public static actionShow(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private requestServerStatus()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/akop/bach/activity/xboxlive/ServerStatus$2;

    invoke-direct {v2, p0}, Lcom/akop/bach/activity/xboxlive/ServerStatus$2;-><init>(Lcom/akop/bach/activity/xboxlive/ServerStatus;)V

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 219
    return-void
.end method

.method private update()V
    .locals 9

    .prologue
    .line 171
    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    if-nez v6, :cond_1

    .line 193
    :cond_0
    return-void

    .line 174
    :cond_1
    const v6, 0x7f0b00fc

    invoke-virtual {p0, v6}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 176
    .local v3, "parent":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    iget-object v6, v6, Lcom/akop/bach/XboxLive$LiveStatusInfo;->categories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;

    .line 178
    .local v0, "cat":Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030050

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 181
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0b00fd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 182
    .local v2, "icon":Landroid/widget/ImageView;
    iget v6, v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->status:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const v6, 0x7f02006e

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    const v6, 0x7f0b00fe

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 186
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const v6, 0x7f0b00ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 189
    .restart local v4    # "tv":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->statusText:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 182
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_2
    const v6, 0x7f020065

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->requestWindowFeature(I)Z

    .line 120
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->setContentView(I)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    .line 123
    if-eqz p1, :cond_0

    .line 125
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$LiveStatusInfo;

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->update()V

    .line 132
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 148
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 157
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mHandler:Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;

    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/TaskController;->isBusy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->showProgressBar(Z)V

    .line 159
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->requestServerStatus()V

    .line 161
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "status"

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus;->mStatus:Lcom/akop/bach/XboxLive$LiveStatusInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    :cond_0
    return-void
.end method
