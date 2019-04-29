.class public Lcom/commonsware/android/arXiv/RSSListWindow;
.super Landroid/app/ListActivity;
.source "RSSListWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;
    }
.end annotation


# static fields
.field public static final DECREASE_ID:I = 0x3

.field public static final FAVORITE_ID:I = 0x4

.field public static final INCREASE_ID:I = 0x2


# instance fields
.field private creators:[Ljava/lang/String;

.field private descriptions:[Ljava/lang/String;

.field private droidDB:Lcom/commonsware/android/arXiv/arXivDB;

.field private favFeed:Lcom/commonsware/android/arXiv/Feed;

.field private fontSize:I

.field private handlerDoneLoading:Landroid/os/Handler;

.field private handlerSetList:Landroid/os/Handler;

.field private header:Landroid/widget/TextView;

.field private links:[Ljava/lang/String;

.field public list:Landroid/widget/ListView;

.field private listText:[Ljava/lang/String;

.field private listText2:[Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field public thisActivity:Lcom/commonsware/android/arXiv/RSSListWindow;

.field private titles:[Ljava/lang/String;

.field private txt:Landroid/widget/TextView;

.field private urlAddress:Ljava/lang/String;

.field private vFavorite:Ljava/lang/Boolean;

.field private vLoaded:Ljava/lang/Boolean;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->vFavorite:Ljava/lang/Boolean;

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->vLoaded:Ljava/lang/Boolean;

    .line 128
    new-instance v0, Lcom/commonsware/android/arXiv/RSSListWindow$1;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/RSSListWindow$1;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->handlerSetList:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/commonsware/android/arXiv/RSSListWindow$2;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/RSSListWindow$2;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->handlerDoneLoading:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/RSSListWindow;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->vLoaded:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$1(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->listText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->listText:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->listText2:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->descriptions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->titles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->creators:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->links:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->descriptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/commonsware/android/arXiv/RSSListWindow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->handlerSetList:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$19(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->handlerDoneLoading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/commonsware/android/arXiv/RSSListWindow;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    return v0
.end method

.method static synthetic access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->listText2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/commonsware/android/arXiv/RSSListWindow;I)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/RSSListWindow;->waiting(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->txt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/commonsware/android/arXiv/RSSListWindow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->urlAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->titles:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->creators:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->links:[Ljava/lang/String;

    return-void
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v4, 0x16

    const/16 v3, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 148
    :pswitch_0
    iget v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    if-ge v2, v4, :cond_0

    .line 149
    iget v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    if-ge v2, v3, :cond_1

    .line 150
    iput v3, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    .line 152
    :cond_1
    iget v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    .line 153
    new-instance v2, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->thisActivity:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-direct {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 154
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v3, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    invoke-virtual {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z

    .line 155
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 156
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->vLoaded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->handlerSetList:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 162
    :pswitch_1
    iget v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    if-le v2, v3, :cond_0

    .line 163
    iget v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    if-le v2, v4, :cond_2

    .line 164
    iput v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    .line 166
    :cond_2
    iget v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    .line 167
    new-instance v2, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->thisActivity:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-direct {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 168
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v3, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    invoke-virtual {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z

    .line 169
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 170
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->vLoaded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->handlerSetList:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 176
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/commonsware/android/arXiv/RSSListWindow;->favoritePressed(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getInfoFromXML()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 184
    const-string v2, ""

    .line 185
    const-string v3, "Loading. Please wait..."

    .line 184
    invoke-static {p0, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 186
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->setProgressBarIndeterminateVisibility(Z)V

    .line 188
    new-instance v1, Lcom/commonsware/android/arXiv/RSSListWindow$3;

    invoke-direct {v1, p0, v0}, Lcom/commonsware/android/arXiv/RSSListWindow$3;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow;Landroid/app/ProgressDialog;)V

    .line 314
    .local v1, "t2":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 315
    return-void
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 412
    const/4 v0, 0x2

    const-string v1, "Increase Font"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 413
    const/4 v0, 0x3

    const-string v1, "Decrease Font"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 414
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->vFavorite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x4

    const-string v1, "Add to Favorites"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 417
    :cond_0
    return-void
.end method

.method private waiting(I)V
    .locals 8
    .param p1, "n"    # I

    .prologue
    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 423
    .local v0, "t0":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 424
    .local v2, "t1":J
    sub-long v4, v2, v0

    int-to-long v6, p1

    .line 422
    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 425
    return-void
.end method


# virtual methods
.method public favoritePressed(Landroid/view/View;)V
    .locals 7
    .param p1, "button"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x2

    .line 318
    new-instance v0, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 319
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " (RSS)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->query:Ljava/lang/String;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/commonsware/android/arXiv/arXivDB;->insertFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 320
    const v0, 0x7f070005

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 323
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->vFavorite:Ljava/lang/Boolean;

    .line 324
    iget v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->version:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/RSSListWindow;->invalidateOptionsMenu()V

    .line 327
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 334
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->requestWindowFeature(I)Z

    .line 335
    const v4, 0x7f030014

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->setContentView(I)V

    .line 337
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->version:I

    .line 339
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/RSSListWindow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 340
    .local v3, "myIntent":Landroid/content/Intent;
    const-string v4, "keyname"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->name:Ljava/lang/String;

    .line 341
    const-string v4, "keyurl"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->query:Ljava/lang/String;

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://export.arxiv.org/rss/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->query:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->urlAddress:Ljava/lang/String;

    .line 344
    const-string v4, "Arxiv - "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RSS "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->urlAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const v4, 0x7f09001d

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->header:Landroid/widget/TextView;

    .line 348
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/RSSListWindow;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 349
    const-string v5, "fonts/LiberationSans.ttf"

    .line 348
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 350
    .local v0, "face":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->header:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 352
    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->header:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iput-object p0, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->thisActivity:Lcom/commonsware/android/arXiv/RSSListWindow;

    .line 356
    const v4, 0x7f09000a

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->txt:Landroid/widget/TextView;

    .line 358
    new-instance v4, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v5, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->thisActivity:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-direct {v4, v5}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 359
    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->getSize()I

    move-result v4

    iput v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    .line 361
    iget v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    if-nez v4, :cond_0

    .line 362
    const/16 v4, 0x10

    iput v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    .line 363
    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v5, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->fontSize:I

    invoke-virtual {v4, v5}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z

    .line 365
    :cond_0
    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/commonsware/android/arXiv/Feed;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 375
    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 377
    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 379
    invoke-direct {p0}, Lcom/commonsware/android/arXiv/RSSListWindow;->getInfoFromXML()V

    .line 381
    return-void

    .line 366
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/commonsware/android/arXiv/Feed;

    .line 367
    .local v2, "feed":Lcom/commonsware/android/arXiv/Feed;
    iget-object v5, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->query:Ljava/lang/String;

    iget-object v6, v2, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    iput-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->favFeed:Lcom/commonsware/android/arXiv/Feed;

    .line 369
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->vFavorite:Ljava/lang/Boolean;

    .line 370
    iget v5, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->version:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/RSSListWindow;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/RSSListWindow;->populateMenu(Landroid/view/Menu;)V

    .line 386
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/commonsware/android/arXiv/SingleItemWindow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "keytitle"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->titles:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "keylink"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->links:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "keydescription"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->descriptions:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "keycreator"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->creators:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "keyname"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0, v0}, Lcom/commonsware/android/arXiv/RSSListWindow;->startActivity(Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/RSSListWindow;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 391
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 392
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/RSSListWindow;->populateMenu(Landroid/view/Menu;)V

    .line 393
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
