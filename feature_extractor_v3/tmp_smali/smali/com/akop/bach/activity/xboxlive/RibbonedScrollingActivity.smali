.class public abstract Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;
.super Lcom/akop/bach/activity/ScrollingActivity;
.source "RibbonedScrollingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;,
        Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_ERROR:I = 0x3e8

.field protected static sCp:Lcom/akop/bach/ImageCache$CachePolicy;


# instance fields
.field protected mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAlert:Landroid/app/AlertDialog;

.field protected mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;

.field protected mNoRecords:Landroid/widget/TextView;

.field private mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    const-wide/16 v2, 0x3840

    invoke-direct {v0, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(J)V

    sput-object v0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/akop/bach/activity/ScrollingActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;

    .line 66
    new-instance v0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$1;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mAlert:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected initializeWindowFeatures()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Lcom/akop/bach/activity/ScrollingActivity;->initializeWindowFeatures()V

    .line 228
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLiveAccount;

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->finish()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-super {p0, p1}, Lcom/akop/bach/activity/ScrollingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 164
    new-instance v0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;->init()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 248
    packed-switch p1, :pswitch_data_0

    .line 263
    invoke-super {p0, p1}, Lcom/akop/bach/activity/ScrollingActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 251
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$3;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$3;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mAlert:Landroid/app/AlertDialog;

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onDataUpdate()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/akop/bach/activity/ScrollingActivity;->onDataUpdate()V

    .line 172
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->updateRibbon()V

    .line 173
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v0, p0}, Lcom/akop/bach/XboxLiveAccount;->open(Landroid/content/Context;)V

    .line 239
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/akop/bach/activity/ScrollingActivity;->onPause()V

    .line 271
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 272
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/akop/bach/activity/ScrollingActivity;->onResume()V

    .line 279
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 280
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mUpdater:Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;

    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/TaskController;->isBusy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->showThrobber(Z)V

    .line 281
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 283
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->updateRibbon()V

    .line 284
    return-void
.end method

.method protected setRibbonTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 193
    const v1, 0x7f0b0017

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 198
    .restart local v0    # "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 202
    new-instance v1, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;

    invoke-direct {v1, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V

    invoke-virtual {v1, p2}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;->setSubtitle(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method protected toggleProgressBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 289
    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 290
    .local v0, "bar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 291
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    :cond_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 294
    return-void

    .line 291
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected updateRibbon()V
    .locals 2

    .prologue
    .line 177
    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 178
    .local v0, "button":Landroid/widget/ImageButton;
    new-instance v1, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$2;

    invoke-direct {v1, p0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$2;-><init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method protected updateRibbon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconUrl"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p2, :cond_1

    .line 211
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 212
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    const/4 v0, 0x0

    .line 214
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, p2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;

    invoke-virtual {v2, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->updateRibbonAvatar(Landroid/graphics/Bitmap;)V

    .line 217
    :cond_0
    sget-object v2, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, p2, v2}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mRibbonImageListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 221
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "ic":Lcom/akop/bach/ImageCache;
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->setRibbonTitles(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method
