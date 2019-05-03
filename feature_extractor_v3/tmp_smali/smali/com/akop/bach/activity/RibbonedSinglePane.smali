.class public abstract Lcom/akop/bach/activity/RibbonedSinglePane;
.super Landroid/support/v4/app/FragmentActivity;
.source "RibbonedSinglePane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;,
        Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;
    }
.end annotation


# static fields
.field protected static sCp:Lcom/akop/bach/ImageCache$CachePolicy;


# instance fields
.field protected mAccount:Lcom/akop/bach/BasicAccount;

.field protected mHandler:Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    const-wide/16 v2, 0x3840

    invoke-direct {v0, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(J)V

    sput-object v0, Lcom/akop/bach/activity/RibbonedSinglePane;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V

    iput-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mHandler:Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;

    .line 75
    new-instance v0, Lcom/akop/bach/activity/RibbonedSinglePane$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/RibbonedSinglePane$1;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V

    iput-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 84
    new-instance v0, Lcom/akop/bach/activity/RibbonedSinglePane$2;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/RibbonedSinglePane$2;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V

    iput-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 119
    return-void
.end method


# virtual methods
.method protected abstract createFragment()Landroid/support/v4/app/Fragment;
.end method

.method protected abstract getActionBarLayout()I
.end method

.method protected abstract getLayout()I
.end method

.method protected abstract getSubtitle()Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/RibbonedSinglePane;->requestWindowFeature(I)Z

    .line 146
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedSinglePane;->getLayout()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/RibbonedSinglePane;->setContentView(I)V

    .line 148
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mAccount:Lcom/akop/bach/BasicAccount;

    if-nez v3, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedSinglePane;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/BasicAccount;

    iput-object v3, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mAccount:Lcom/akop/bach/BasicAccount;

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mAccount:Lcom/akop/bach/BasicAccount;

    if-nez v3, :cond_2

    .line 153
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const-string v3, "Account is null"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedSinglePane;->finish()V

    .line 178
    :goto_0
    return-void

    .line 160
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    .line 162
    new-instance v3, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V

    invoke-virtual {v3}, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;->init()V

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedSinglePane;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 168
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 169
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/16 v3, 0x1003

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 171
    const-string v3, "details"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .local v2, "titleFrag":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedSinglePane;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 174
    const v3, 0x7f0b0084

    const-string v4, "details"

    invoke-virtual {v1, v3, v2, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 177
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 231
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 232
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 233
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/RibbonedSinglePane;->toggleProgressBar(Z)V

    .line 242
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 243
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 245
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedSinglePane;->updateRibbon()V

    .line 246
    return-void
.end method

.method protected toggleProgressBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 250
    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/RibbonedSinglePane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 251
    .local v0, "bar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 252
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 254
    :cond_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/RibbonedSinglePane;->setProgressBarIndeterminateVisibility(Z)V

    .line 255
    return-void

    .line 252
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected updateRibbon()V
    .locals 13

    .prologue
    .line 182
    const v3, 0x7f0b0016

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/RibbonedSinglePane;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 183
    .local v12, "view":Landroid/view/View;
    instance-of v3, v12, Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    move-object v8, v12

    .line 185
    check-cast v8, Landroid/widget/ImageButton;

    .line 186
    .local v8, "button":Landroid/widget/ImageButton;
    new-instance v3, Lcom/akop/bach/activity/RibbonedSinglePane$3;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/RibbonedSinglePane$3;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .end local v8    # "button":Landroid/widget/ImageButton;
    :cond_0
    const/4 v0, 0x0

    .line 198
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mAccount:Lcom/akop/bach/BasicAccount;

    invoke-virtual {v3}, Lcom/akop/bach/BasicAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "iconUrl":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 202
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 203
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mHandler:Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;

    invoke-virtual {v3, v0}, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;->updateAvatar(Landroid/graphics/Bitmap;)V

    .line 206
    :cond_1
    sget-object v3, Lcom/akop/bach/activity/RibbonedSinglePane;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/akop/bach/activity/RibbonedSinglePane;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 210
    .end local v1    # "ic":Lcom/akop/bach/ImageCache;
    :cond_2
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedSinglePane;->mAccount:Lcom/akop/bach/BasicAccount;

    invoke-virtual {v3}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedSinglePane;->getSubtitle()Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, "subtitle":Ljava/lang/String;
    const v3, 0x7f0b0017

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/RibbonedSinglePane;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 214
    .local v11, "tv":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0, v10}, Lcom/akop/bach/activity/RibbonedSinglePane;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    const v3, 0x7f0b0018

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/RibbonedSinglePane;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "tv":Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 218
    .restart local v11    # "tv":Landroid/widget/TextView;
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    .line 222
    new-instance v3, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V

    invoke-virtual {v3, v9}, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;->setSubtitle(Ljava/lang/String;)V

    .line 224
    :cond_3
    return-void
.end method
