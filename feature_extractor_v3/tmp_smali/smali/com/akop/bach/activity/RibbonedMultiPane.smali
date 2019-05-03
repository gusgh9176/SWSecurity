.class public abstract Lcom/akop/bach/activity/RibbonedMultiPane;
.super Landroid/support/v4/app/FragmentActivity;
.source "RibbonedMultiPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;,
        Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;
    }
.end annotation


# static fields
.field protected static sCp:Lcom/akop/bach/ImageCache$CachePolicy;


# instance fields
.field protected mAccount:Lcom/akop/bach/BasicAccount;

.field protected mDetailFragment:Landroid/support/v4/app/Fragment;

.field protected mHandler:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

.field protected mTitleFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    const-wide/16 v2, 0x3840

    invoke-direct {v0, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(J)V

    sput-object v0, Lcom/akop/bach/activity/RibbonedMultiPane;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;-><init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V

    iput-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mHandler:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

    .line 77
    new-instance v0, Lcom/akop/bach/activity/RibbonedMultiPane$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/RibbonedMultiPane$1;-><init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V

    iput-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 86
    new-instance v0, Lcom/akop/bach/activity/RibbonedMultiPane$2;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/RibbonedMultiPane$2;-><init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V

    iput-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 144
    return-void
.end method


# virtual methods
.method protected allowNullAccounts()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getActionBarLayout()I
.end method

.method protected getBachTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mAccount:Lcom/akop/bach/BasicAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mAccount:Lcom/akop/bach/BasicAccount;

    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDetailPane()Landroid/view/View;
    .locals 1

    .prologue
    .line 316
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/RibbonedMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLayout()I
.end method

.method protected abstract getSubtitle()Ljava/lang/String;
.end method

.method protected initializeParameters()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract instantiateDetailFragment()Landroid/support/v4/app/Fragment;
.end method

.method protected abstract instantiateTitleFragment()Landroid/support/v4/app/Fragment;
.end method

.method protected isDualPane()Z
    .locals 1

    .prologue
    .line 321
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/RibbonedMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/akop/bach/activity/RibbonedMultiPane;->requestWindowFeature(I)Z

    .line 168
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->getLayout()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/akop/bach/activity/RibbonedMultiPane;->setContentView(I)V

    .line 170
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/BasicAccount;

    iput-object v4, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mAccount:Lcom/akop/bach/BasicAccount;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->allowNullAccounts()Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    const-string v4, "Account is null"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->finish()V

    .line 227
    :goto_0
    return-void

    .line 180
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 182
    new-instance v4, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;

    invoke-direct {v4, p0}, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;-><init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V

    invoke-virtual {v4}, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;->init()V

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->initializeParameters()Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->finish()V

    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 196
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 197
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/16 v4, 0x1003

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 199
    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .local v3, "titleFrag":Landroid/support/v4/app/Fragment;
    if-nez v3, :cond_4

    .line 201
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->instantiateTitleFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 202
    const v4, 0x7f0b0084

    const-string v5, "title"

    invoke-virtual {v2, v4, v3, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->isDualPane()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 207
    const-string v4, "details"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mDetailFragment:Landroid/support/v4/app/Fragment;

    if-nez v4, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->instantiateDetailFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mDetailFragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_5

    .line 210
    const v4, 0x7f0b0085

    iget-object v5, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mDetailFragment:Landroid/support/v4/app/Fragment;

    const-string v6, "details"

    invoke-virtual {v2, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 226
    :cond_5
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 212
    :cond_6
    iget-object v4, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mDetailFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 214
    iget-object v4, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mDetailFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 220
    :cond_7
    const-string v4, "details"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .local v0, "detailFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_5

    .line 222
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 297
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 298
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 299
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/RibbonedMultiPane;->toggleProgressBar(Z)V

    .line 308
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 309
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 311
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->updateRibbon()V

    .line 312
    return-void
.end method

.method protected toggleProgressBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 326
    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/RibbonedMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 327
    .local v0, "bar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 328
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/RibbonedMultiPane;->setProgressBarIndeterminateVisibility(Z)V

    .line 331
    return-void

    .line 328
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected updateRibbon()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const v4, 0x7f0b0016

    .line 240
    invoke-virtual {p0, v4}, Lcom/akop/bach/activity/RibbonedMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 241
    .local v13, "view":Landroid/view/View;
    instance-of v3, v13, Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    move-object v8, v13

    .line 243
    check-cast v8, Landroid/widget/ImageButton;

    .line 244
    .local v8, "button":Landroid/widget/ImageButton;
    new-instance v3, Lcom/akop/bach/activity/RibbonedMultiPane$3;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/RibbonedMultiPane$3;-><init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .end local v8    # "button":Landroid/widget/ImageButton;
    :cond_0
    const/4 v0, 0x0

    .line 256
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mAccount:Lcom/akop/bach/BasicAccount;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mAccount:Lcom/akop/bach/BasicAccount;

    invoke-virtual {v3}, Lcom/akop/bach/BasicAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "iconUrl":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_7

    .line 260
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 261
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mHandler:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

    invoke-virtual {v3, v0}, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;->updateAvatar(Landroid/graphics/Bitmap;)V

    .line 264
    :cond_1
    sget-object v3, Lcom/akop/bach/activity/RibbonedMultiPane;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/akop/bach/activity/RibbonedMultiPane;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    sget-object v7, Lcom/akop/bach/activity/RibbonedMultiPane;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 274
    .end local v1    # "ic":Lcom/akop/bach/ImageCache;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->getBachTitle()Ljava/lang/String;

    move-result-object v11

    .line 275
    .local v11, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;->getSubtitle()Ljava/lang/String;

    move-result-object v10

    .line 279
    .local v10, "subtitle":Ljava/lang/String;
    const v3, 0x7f0b0017

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/RibbonedMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .local v12, "tv":Landroid/widget/TextView;
    if-eqz v12, :cond_3

    .line 280
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_3
    const v3, 0x7f0b0018

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/RibbonedMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .restart local v12    # "tv":Landroid/widget/TextView;
    if-eqz v12, :cond_4

    .line 283
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_4
    invoke-virtual {p0, v11}, Lcom/akop/bach/activity/RibbonedMultiPane;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_5

    .line 288
    new-instance v3, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;-><init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V

    invoke-virtual {v3, v10}, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;->setSubtitle(Ljava/lang/String;)V

    .line 290
    :cond_5
    return-void

    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v10    # "subtitle":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "tv":Landroid/widget/TextView;
    :cond_6
    move-object v2, v6

    .line 256
    goto :goto_0

    .line 269
    .restart local v2    # "iconUrl":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v4}, Lcom/akop/bach/activity/RibbonedMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 270
    .local v9, "iv":Landroid/widget/ImageView;
    if-eqz v9, :cond_2

    .line 271
    const v3, 0x7f020025

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
