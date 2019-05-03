.class public abstract Lcom/akop/bach/activity/xboxlive/RibbonedActivity;
.super Landroid/app/Activity;
.source "RibbonedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;,
        Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;
    }
.end annotation


# static fields
.field private static final DIALOG_ERROR:I = 0x3e8

.field protected static sCp:Lcom/akop/bach/ImageCache$CachePolicy;


# instance fields
.field protected mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAlert:Landroid/app/AlertDialog;

.field protected mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

.field protected mNoRecords:Landroid/widget/TextView;

.field private mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    const-wide/16 v2, 0x3840

    invoke-direct {v0, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(J)V

    sput-object v0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    .line 82
    new-instance v0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$1;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAlert:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected initializeWindowFeatures()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->requestWindowFeature(I)Z

    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->initializeWindowFeatures()V

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->toggleProgressBar(Z)V

    .line 201
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLiveAccount;

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v0, :cond_3

    .line 206
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const-string v0, "Account is null"

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->finish()V

    .line 217
    :cond_2
    :goto_0
    return-void

    .line 213
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 215
    new-instance v0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;->init()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_0

    .line 311
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 296
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$3;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$3;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAlert:Landroid/app/AlertDialog;

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onErrorDialogOk()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v0, p0}, Lcom/akop/bach/XboxLiveAccount;->open(Landroid/content/Context;)V

    .line 343
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 319
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 320
    return-void
.end method

.method protected onRefresh()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 327
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/TaskController;->isBusy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 328
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 329
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 331
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->updateRibbon()V

    .line 332
    return-void
.end method

.method protected setRibbonTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 223
    const v1, 0x7f0b0017

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 233
    new-instance v1, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;

    invoke-direct {v1, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V

    invoke-virtual {v1, p2}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;->setSubtitle(Ljava/lang/String;)V

    .line 235
    :cond_2
    return-void
.end method

.method protected toggleProgressBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 241
    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 242
    .local v0, "bar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 243
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 246
    return-void

    .line 243
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected abstract updateRibbon()V
.end method

.method protected updateRibbon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconUrl"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 251
    const v2, 0x7f0b0016

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 252
    .local v9, "view":Landroid/view/View;
    instance-of v2, v9, Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    move-object v8, v9

    .line 254
    check-cast v8, Landroid/widget/ImageButton;

    .line 255
    .local v8, "button":Landroid/widget/ImageButton;
    new-instance v2, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$2;

    invoke-direct {v2, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$2;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .end local v8    # "button":Landroid/widget/ImageButton;
    :cond_0
    if-eqz p2, :cond_2

    .line 268
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 269
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    const/4 v0, 0x0

    .line 271
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, p2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    invoke-virtual {v2, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->updateRibbonAvatar(Landroid/graphics/Bitmap;)V

    .line 274
    :cond_1
    sget-object v2, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, p2, v2}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 278
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "ic":Lcom/akop/bach/ImageCache;
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->setRibbonTitles(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method
