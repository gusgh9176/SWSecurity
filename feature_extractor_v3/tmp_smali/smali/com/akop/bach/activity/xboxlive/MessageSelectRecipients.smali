.class public Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;
.super Landroid/app/ListActivity;
.source "MessageSelectRecipients.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;,
        Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

.field private mDiscard:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSave:Landroid/widget/Button;

.field private mToggle:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mAdapter:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static actionSelectFriends(Landroid/app/Activity;Lcom/akop/bach/SupportsFriends;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/akop/bach/SupportsFriends;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/akop/bach/SupportsFriends;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 434
    const-string v1, "selected"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 436
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 437
    return-void
.end method

.method private getSelection()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v2, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    .line 326
    .local v1, "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    iget-boolean v3, v1, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->isSelected:Z

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, v1, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->gamertag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    .end local v1    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    :cond_1
    return-object v2
.end method

.method private loadIconsInBackground()V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$2;

    invoke-direct {v1, p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$2;-><init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 367
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 368
    return-void
.end method

.method private refreshRecipients(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "suppliedRecipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 373
    .local v11, "recipientCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 375
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Gamertag"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IconUrl"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Gamertag COLLATE NOCASE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 386
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 390
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    new-instance v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;-><init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;)V

    .line 394
    .local v9, "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->gamertag:Ljava/lang/String;

    .line 395
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    .line 398
    iget-object v0, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->gamertag:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_0

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->isSelected:Z

    .line 401
    invoke-interface {v11, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 409
    .end local v8    # "index":I
    .end local v9    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 415
    .local v10, "r":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 417
    new-instance v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;-><init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;)V

    .line 419
    .restart local v9    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    iput-object v10, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->gamertag:Ljava/lang/String;

    .line 420
    invoke-static {v10}, Lcom/akop/bach/parser/XboxLiveParser;->getGamerpicUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->isSelected:Z

    .line 423
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 426
    .end local v9    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    .end local v10    # "r":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private toggleAll()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 312
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 320
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    iget-boolean v3, v3, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->isSelected:Z

    if-nez v3, :cond_1

    .line 316
    .local v2, "newState":Z
    :goto_1
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    .line 317
    .local v1, "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    iput-boolean v2, v1, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->isSelected:Z

    goto :goto_2

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    .end local v2    # "newState":Z
    :cond_1
    move v2, v4

    .line 315
    goto :goto_1

    .line 319
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "newState":Z
    :cond_2
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mAdapter:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    invoke-virtual {v3}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 255
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selected"

    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->getSelection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 257
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->setResult(ILandroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->finish()V

    goto :goto_0

    .line 261
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->toggleAll()V

    goto :goto_0

    .line 264
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->setResult(I)V

    .line 265
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->finish()V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x7f0b00dd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 199
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    const v2, 0x7f030040

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->setContentView(I)V

    .line 202
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "account"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLiveAccount;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 203
    const v2, 0x7f0b00dd

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mSave:Landroid/widget/Button;

    .line 204
    const v2, 0x7f0b00df

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mDiscard:Landroid/widget/Button;

    .line 205
    const v2, 0x7f0b00de

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mToggle:Landroid/widget/Button;

    .line 207
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mToggle:Landroid/widget/Button;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mSave:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mDiscard:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mToggle:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    .line 214
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mIconCache:Ljava/util/HashMap;

    .line 215
    new-instance v2, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v5}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;-><init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mAdapter:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    .line 217
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 218
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mAdapter:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    if-eqz p1, :cond_0

    const-string v2, "recipients"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    const-string v2, "recipients"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 235
    :goto_0
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mAdapter:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    invoke-virtual {v2}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->notifyDataSetChanged()V

    .line 237
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mSave:Landroid/widget/Button;

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mToggle:Landroid/widget/Button;

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "selected"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 232
    .local v1, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->refreshRecipients(Ljava/util/ArrayList;)V

    goto :goto_0

    .end local v1    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    move v2, v4

    .line 237
    goto :goto_1

    :cond_2
    move v3, v4

    .line 238
    goto :goto_2
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 291
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 292
    .local v0, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;

    invoke-direct {v2, p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;-><init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    .line 305
    .local v0, "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    iget-boolean v1, v0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->isSelected:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->isSelected:Z

    .line 307
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mAdapter:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->notifyDataSetChanged()V

    .line 308
    return-void

    .line 305
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 275
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 276
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 283
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 285
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->loadIconsInBackground()V

    .line 286
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    const-string v0, "recipients"

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 247
    return-void
.end method
