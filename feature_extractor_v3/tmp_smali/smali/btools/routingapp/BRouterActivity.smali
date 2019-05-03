.class public Lbtools/routingapp/BRouterActivity;
.super Landroid/app/Activity;
.source "BRouterActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final DIALOG_EXCEPTION_ID:I = 0x2

.field private static final DIALOG_MAINACTION_ID:I = 0xc

.field private static final DIALOG_MODECONFIGOVERVIEW_ID:I = 0x9

.field private static final DIALOG_NOGOSELECT_ID:I = 0x6

.field private static final DIALOG_OLDDATAHINT_ID:I = 0xd

.field private static final DIALOG_PICKWAYPOINT_ID:I = 0xa

.field private static final DIALOG_ROUTINGMODES_ID:I = 0x8

.field private static final DIALOG_SELECTBASEDIR_ID:I = 0xb

.field private static final DIALOG_SELECTPROFILE_ID:I = 0x1

.field private static final DIALOG_SHOWRESULT_ID:I = 0x7

.field private static final DIALOG_SHOW_DM_INFO_ID:I = 0x3

.field private static final DIALOG_SHOW_REPEAT_TIMEOUT_HELP_ID:I = 0x10

.field private static final DIALOG_SHOW_WP_HELP_ID:I = 0xe

.field private static final DIALOG_SHOW_WP_SCANRESULT_ID:I = 0xf

.field private static final DIALOG_TEXTENTRY_ID:I = 0x4

.field private static final DIALOG_VIASELECT_ID:I = 0x5


# instance fields
.field private availableBasedirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private availableProfiles:[Ljava/lang/String;

.field private availableVias:[Ljava/lang/String;

.field private availableWaypoints:[Ljava/lang/String;

.field private basedirOptions:[Ljava/lang/String;

.field private defaultbasedir:Ljava/lang/String;

.field private dialogIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;

.field private mBRouterView:Lbtools/routingapp/BRouterView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maptoolDirCandidate:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private nogoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field private routingModes:[Ljava/lang/String;

.field private routingModesChecked:[Z

.field private selectedBasedir:I

.field private selectedProfile:Ljava/lang/String;

.field private selectedVias:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private wpCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 404
    iput-object v0, p0, Lbtools/routingapp/BRouterActivity;->selectedProfile:Ljava/lang/String;

    .line 415
    iput-object v0, p0, Lbtools/routingapp/BRouterActivity;->defaultbasedir:Ljava/lang/String;

    .line 416
    iput-object v0, p0, Lbtools/routingapp/BRouterActivity;->message:Ljava/lang/String;

    .line 555
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbtools/routingapp/BRouterActivity;->dialogIds:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lbtools/routingapp/BRouterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->selectedProfile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lbtools/routingapp/BRouterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->selectedProfile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lbtools/routingapp/BRouterActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->availableProfiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lbtools/routingapp/BRouterActivity;)I
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget v0, p0, Lbtools/routingapp/BRouterActivity;->wpCount:I

    return v0
.end method

.method static synthetic access$1100(Lbtools/routingapp/BRouterActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->availableWaypoints:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lbtools/routingapp/BRouterActivity;)Lbtools/routingapp/BRouterView;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->mBRouterView:Lbtools/routingapp/BRouterView;

    return-object v0
.end method

.method static synthetic access$300(Lbtools/routingapp/BRouterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->maptoolDirCandidate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lbtools/routingapp/BRouterActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->routingModesChecked:[Z

    return-object v0
.end method

.method static synthetic access$500(Lbtools/routingapp/BRouterActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->routingModes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lbtools/routingapp/BRouterActivity;)I
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget v0, p0, Lbtools/routingapp/BRouterActivity;->selectedBasedir:I

    return v0
.end method

.method static synthetic access$602(Lbtools/routingapp/BRouterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lbtools/routingapp/BRouterActivity;->selectedBasedir:I

    return p1
.end method

.method static synthetic access$700(Lbtools/routingapp/BRouterActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->availableBasedirs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lbtools/routingapp/BRouterActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->availableVias:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lbtools/routingapp/BRouterActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->selectedVias:Ljava/util/Set;

    return-object v0
.end method

.method private getCheckedBooleanArray(I)[Z
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 398
    new-array v0, p1, [Z

    .line 399
    .local v0, "checked":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_0
    return-object v0
.end method

.method private showNewDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->dialogIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0, p1}, Lbtools/routingapp/BRouterActivity;->removeDialog(I)V

    .line 563
    :cond_0
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->dialogIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-virtual {p0, p1}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    .line 565
    return-void
.end method


# virtual methods
.method public isOnline()Z
    .locals 2

    .prologue
    .line 427
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lbtools/routingapp/BRouterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 429
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lbtools/routingapp/BRouterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lbtools/routingapp/BRouterActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 59
    iget-object v2, p0, Lbtools/routingapp/BRouterActivity;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0xa

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lbtools/routingapp/BRouterActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lbtools/routingapp/BRouterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 62
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 65
    .local v1, "memoryClass":I
    new-instance v2, Lbtools/routingapp/BRouterView;

    invoke-direct {v2, p0, v1}, Lbtools/routingapp/BRouterView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lbtools/routingapp/BRouterActivity;->mBRouterView:Lbtools/routingapp/BRouterView;

    .line 66
    iget-object v2, p0, Lbtools/routingapp/BRouterActivity;->mBRouterView:Lbtools/routingapp/BRouterView;

    invoke-virtual {v2}, Lbtools/routingapp/BRouterView;->init()V

    .line 67
    iget-object v2, p0, Lbtools/routingapp/BRouterActivity;->mBRouterView:Lbtools/routingapp/BRouterView;

    invoke-virtual {p0, v2}, Lbtools/routingapp/BRouterActivity;->setContentView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 392
    const/4 v7, 0x0

    :goto_0
    return-object v7

    .line 78
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Select a routing profile"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->availableProfiles:[Ljava/lang/String;

    new-instance v8, Lbtools/routingapp/BRouterActivity$1;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$1;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 90
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Select Main Action"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "Download Manager"

    aput-object v8, v7, v9

    const/4 v8, 0x1

    const-string v9, "BRouter App"

    aput-object v9, v7, v8

    new-instance v8, Lbtools/routingapp/BRouterActivity$2;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$2;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 105
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "BRouter Download Manager"

    .line 107
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "*** Attention: ***\n\nThe Download Manager is used to download routing-data files which can be up to 100MB each. Do not start the Download Manager on a cellular data connection without a data plan! Download speed is restricted to 2 MBit/s."

    .line 108
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "I know"

    new-instance v9, Lbtools/routingapp/BRouterActivity$4;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$4;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 111
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Cancel"

    new-instance v9, Lbtools/routingapp/BRouterActivity$3;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$3;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 119
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 128
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "No Waypoint Database found"

    .line 130
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "The simple scan did not find any map-tool directory including a waypoint database. Reason could be there is no map-tool installed (osmand, locus or oruxmaps), or at an unusual path, or it contains no waypoints yet. That\'s o.k. if you want to use BRouter in server-mode only - in that case you can still use the \'Server-Mode\' button to configure the profile mapping. But you will not be able to use nogo-points or do long distance calculations. If you know the path to your map-tool, you can manually configure it in \'storageconfig.txt\'. Or I can do an extended scan searching your sd-card for a valid waypoint database"

    .line 131
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Scan"

    new-instance v9, Lbtools/routingapp/BRouterActivity$6;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$6;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 139
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Exit"

    new-instance v9, Lbtools/routingapp/BRouterActivity$5;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$5;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 145
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 154
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Successfully prepared a timeout-free calculation"

    .line 156
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "You successfully repeated a calculation that previously run into a timeout when started from your map-tool. If you repeat the same request from your maptool, with the exact same destination point and a close-by starting point, this request is guaranteed not to time out."

    .line 157
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Exit"

    new-instance v9, Lbtools/routingapp/BRouterActivity$7;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$7;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 161
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 170
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Waypoint Database "

    .line 172
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found Waypoint-Database(s) for maptool-dir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lbtools/routingapp/BRouterActivity;->maptoolDirCandidate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Configure that?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 173
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Yes"

    new-instance v9, Lbtools/routingapp/BRouterActivity$9;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$9;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 174
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "No"

    new-instance v9, Lbtools/routingapp/BRouterActivity$8;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$8;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 180
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 189
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Local setup needs reset"

    .line 191
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "You are currently using an old version of the lookup-table together with routing data made for this old table. Before downloading new datafiles made for the new table, you have to reset your local setup by \'moving away\' (or deleting) your <basedir>/brouter directory and start a new setup by calling the BRouter App again."

    .line 192
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "OK"

    new-instance v9, Lbtools/routingapp/BRouterActivity$10;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$10;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 197
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 206
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->message:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 208
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->routingModes:[Ljava/lang/String;

    iget-object v8, p0, Lbtools/routingapp/BRouterActivity;->routingModesChecked:[Z

    new-instance v9, Lbtools/routingapp/BRouterActivity$11;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$11;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    const-string v7, "Ok"

    new-instance v8, Lbtools/routingapp/BRouterActivity$12;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$12;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 225
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "An Error occured"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lbtools/routingapp/BRouterActivity;->errorMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "OK"

    new-instance v9, Lbtools/routingapp/BRouterActivity$13;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$13;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 235
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Enter SDCARD base dir:"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->message:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 238
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 239
    .local v2, "input":Landroid/widget/EditText;
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->defaultbasedir:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 241
    const-string v7, "Ok"

    new-instance v8, Lbtools/routingapp/BRouterActivity$14;

    invoke-direct {v8, p0, v2}, Lbtools/routingapp/BRouterActivity$14;-><init>(Lbtools/routingapp/BRouterActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 251
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "input":Landroid/widget/EditText;
    :pswitch_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Select an SDCARD base dir:"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 253
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->basedirOptions:[Ljava/lang/String;

    new-instance v8, Lbtools/routingapp/BRouterActivity$15;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$15;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    const-string v7, "Ok"

    new-instance v8, Lbtools/routingapp/BRouterActivity$16;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$16;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 277
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Check VIA Selection:"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->availableVias:[Ljava/lang/String;

    iget-object v8, p0, Lbtools/routingapp/BRouterActivity;->availableVias:[Ljava/lang/String;

    array-length v8, v8

    invoke-direct {p0, v8}, Lbtools/routingapp/BRouterActivity;->getCheckedBooleanArray(I)[Z

    move-result-object v8

    new-instance v9, Lbtools/routingapp/BRouterActivity$17;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$17;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    const-string v7, "Ok"

    new-instance v8, Lbtools/routingapp/BRouterActivity$18;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$18;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 304
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Check NoGo Selection:"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 306
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->nogoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 307
    .local v5, "nogoNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->nogoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 308
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->nogoList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbtools/router/OsmNodeNamed;

    iget-object v7, v7, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    aput-object v7, v5, v1

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :cond_0
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->nogoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v7}, Lbtools/routingapp/BRouterActivity;->getCheckedBooleanArray(I)[Z

    move-result-object v4

    .line 310
    .local v4, "nogoEnabled":[Z
    array-length v7, v5

    invoke-direct {p0, v7}, Lbtools/routingapp/BRouterActivity;->getCheckedBooleanArray(I)[Z

    move-result-object v7

    new-instance v8, Lbtools/routingapp/BRouterActivity$19;

    invoke-direct {v8, p0, v4}, Lbtools/routingapp/BRouterActivity$19;-><init>(Lbtools/routingapp/BRouterActivity;[Z)V

    invoke-virtual {v0, v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    const-string v7, "Ok"

    new-instance v8, Lbtools/routingapp/BRouterActivity$20;

    invoke-direct {v8, p0, v4}, Lbtools/routingapp/BRouterActivity$20;-><init>(Lbtools/routingapp/BRouterActivity;[Z)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 328
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "i":I
    .end local v4    # "nogoEnabled":[Z
    .end local v5    # "nogoNames":[Ljava/lang/String;
    :pswitch_d
    iget v7, p0, Lbtools/routingapp/BRouterActivity;->wpCount:I

    if-gez v7, :cond_2

    iget v7, p0, Lbtools/routingapp/BRouterActivity;->wpCount:I

    const/4 v8, -0x2

    if-eq v7, v8, :cond_1

    const-string v3, "Exit"

    .line 329
    .local v3, "leftLabel":Ljava/lang/String;
    :goto_2
    iget v7, p0, Lbtools/routingapp/BRouterActivity;->wpCount:I

    if-ge v7, v10, :cond_5

    iget v7, p0, Lbtools/routingapp/BRouterActivity;->wpCount:I

    const/4 v8, -0x3

    if-ne v7, v8, :cond_4

    const-string v6, "Help"

    .line 330
    .local v6, "rightLabel":Ljava/lang/String;
    :goto_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lbtools/routingapp/BRouterActivity;->errorMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lbtools/routingapp/BRouterActivity$22;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$22;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v7, v3, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lbtools/routingapp/BRouterActivity$21;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$21;-><init>(Lbtools/routingapp/BRouterActivity;)V

    .line 348
    invoke-virtual {v7, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 328
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "leftLabel":Ljava/lang/String;
    .end local v6    # "rightLabel":Ljava/lang/String;
    :cond_1
    const-string v3, "Help"

    goto :goto_2

    :cond_2
    iget v7, p0, Lbtools/routingapp/BRouterActivity;->wpCount:I

    if-nez v7, :cond_3

    const-string v3, "Select from"

    goto :goto_2

    :cond_3
    const-string v3, "Select to/via"

    goto :goto_2

    .line 329
    .restart local v3    # "leftLabel":Ljava/lang/String;
    :cond_4
    const-string v6, "Server-Mode"

    goto :goto_3

    :cond_5
    const-string v6, "Calc Route"

    goto :goto_3

    .line 369
    .end local v3    # "leftLabel":Ljava/lang/String;
    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Success"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lbtools/routingapp/BRouterActivity;->message:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Exit"

    new-instance v9, Lbtools/routingapp/BRouterActivity$23;

    invoke-direct {v9, p0}, Lbtools/routingapp/BRouterActivity$23;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 379
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    iget v7, p0, Lbtools/routingapp/BRouterActivity;->wpCount:I

    if-lez v7, :cond_6

    const-string v7, "Select to/via"

    :goto_4
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 381
    iget-object v7, p0, Lbtools/routingapp/BRouterActivity;->availableWaypoints:[Ljava/lang/String;

    new-instance v8, Lbtools/routingapp/BRouterActivity$24;

    invoke-direct {v8, p0}, Lbtools/routingapp/BRouterActivity$24;-><init>(Lbtools/routingapp/BRouterActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 380
    :cond_6
    const-string v7, "Select from"

    goto :goto_4

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 617
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 602
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 608
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->mBRouterView:Lbtools/routingapp/BRouterView;

    invoke-virtual {v0}, Lbtools/routingapp/BRouterView;->stopRouting()V

    .line 611
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 612
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 590
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 596
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 597
    return-void
.end method

.method public selectBasedir(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p2, "defaultBasedir"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterActivity;->defaultbasedir:Ljava/lang/String;

    .line 465
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterActivity;->message:Ljava/lang/String;

    .line 466
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lbtools/routingapp/BRouterActivity;->availableBasedirs:Ljava/util/List;

    .line 467
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v6, "dirFreeSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 470
    .local v4, "d":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 473
    .local v8, "size":J
    :try_start_0
    new-instance v10, Landroid/os/StatFs;

    invoke-direct {v10, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 474
    .local v10, "stat":Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v14, v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v8, v14, v16

    .line 477
    .end local v10    # "stat":Landroid/os/StatFs;
    :goto_1
    const/4 v7, 0x0

    .line 478
    .local v7, "idx":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lbtools/routingapp/BRouterActivity;->availableBasedirs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v11, v14, v8

    if-lez v11, :cond_0

    .line 479
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 480
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lbtools/routingapp/BRouterActivity;->availableBasedirs:Ljava/util/List;

    invoke-interface {v11, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 481
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 484
    .end local v4    # "d":Ljava/lang/String;
    .end local v7    # "idx":I
    .end local v8    # "size":J
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lbtools/routingapp/BRouterActivity;->basedirOptions:[Ljava/lang/String;

    .line 485
    const/4 v2, 0x0

    .line 486
    .local v2, "bdidx":I
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v11, "###0.00"

    invoke-direct {v5, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 487
    .local v5, "df":Ljava/text/DecimalFormat;
    const/4 v7, 0x0

    .restart local v7    # "idx":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lbtools/routingapp/BRouterActivity;->availableBasedirs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/routingapp/BRouterActivity;->basedirOptions:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bdidx":I
    .local v3, "bdidx":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lbtools/routingapp/BRouterActivity;->availableBasedirs:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " GB free)"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v2

    .line 487
    add-int/lit8 v7, v7, 0x1

    move v2, v3

    .end local v3    # "bdidx":I
    .restart local v2    # "bdidx":I
    goto :goto_3

    .line 491
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lbtools/routingapp/BRouterActivity;->basedirOptions:[Ljava/lang/String;

    const-string v12, "Other"

    aput-object v12, v11, v2

    .line 493
    const/16 v11, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    .line 494
    return-void

    .line 476
    .end local v2    # "bdidx":I
    .end local v5    # "df":Ljava/text/DecimalFormat;
    .end local v7    # "idx":I
    .restart local v4    # "d":Ljava/lang/String;
    .restart local v8    # "size":J
    :catch_0
    move-exception v11

    goto/16 :goto_1
.end method

.method public selectNogos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, "nogoList":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->nogoList:Ljava/util/List;

    .line 552
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    .line 553
    return-void
.end method

.method public selectProfile([Ljava/lang/String;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->availableProfiles:[Ljava/lang/String;

    .line 438
    invoke-virtual {p0}, Lbtools/routingapp/BRouterActivity;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public selectRoutingModes([Ljava/lang/String;[ZLjava/lang/String;)V
    .locals 1
    .param p1, "modes"    # [Ljava/lang/String;
    .param p2, "modesChecked"    # [Z
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->routingModes:[Ljava/lang/String;

    .line 500
    iput-object p2, p0, Lbtools/routingapp/BRouterActivity;->routingModesChecked:[Z

    .line 501
    iput-object p3, p0, Lbtools/routingapp/BRouterActivity;->message:Ljava/lang/String;

    .line 502
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    .line 503
    return-void
.end method

.method public selectVias([Ljava/lang/String;)V
    .locals 4
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 515
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->availableVias:[Ljava/lang/String;

    .line 516
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lbtools/routingapp/BRouterActivity;->availableVias:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lbtools/routingapp/BRouterActivity;->selectedVias:Ljava/util/Set;

    .line 517
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 518
    .local v0, "via":Ljava/lang/String;
    iget-object v3, p0, Lbtools/routingapp/BRouterActivity;->selectedVias:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "via":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    .line 520
    return-void
.end method

.method public selectWaypoint([Ljava/lang/String;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->availableWaypoints:[Ljava/lang/String;

    .line 526
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lbtools/routingapp/BRouterActivity;->showNewDialog(I)V

    .line 527
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->errorMessage:Ljava/lang/String;

    .line 575
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbtools/routingapp/BRouterActivity;->showNewDialog(I)V

    .line 576
    return-void
.end method

.method public showModeConfigOverview(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->message:Ljava/lang/String;

    .line 509
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    .line 510
    return-void
.end method

.method public showRepeatTimeoutHelp()V
    .locals 1

    .prologue
    .line 538
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lbtools/routingapp/BRouterActivity;->showNewDialog(I)V

    .line 539
    return-void
.end method

.method public showResultMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "wpCount"    # I

    .prologue
    .line 581
    iput-object p2, p0, Lbtools/routingapp/BRouterActivity;->errorMessage:Ljava/lang/String;

    .line 582
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->title:Ljava/lang/String;

    .line 583
    iput p3, p0, Lbtools/routingapp/BRouterActivity;->wpCount:I

    .line 584
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lbtools/routingapp/BRouterActivity;->showNewDialog(I)V

    .line 585
    return-void
.end method

.method public showWaypointDatabaseHelp()V
    .locals 1

    .prologue
    .line 532
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lbtools/routingapp/BRouterActivity;->showNewDialog(I)V

    .line 533
    return-void
.end method

.method public showWpDatabaseScanSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "bestGuess"    # Ljava/lang/String;

    .prologue
    .line 544
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity;->maptoolDirCandidate:Ljava/lang/String;

    .line 545
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lbtools/routingapp/BRouterActivity;->showNewDialog(I)V

    .line 546
    return-void
.end method

.method public startDownloadManager()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity;->mBRouterView:Lbtools/routingapp/BRouterView;

    invoke-virtual {v0}, Lbtools/routingapp/BRouterView;->hasUpToDateLookups()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    goto :goto_0
.end method
