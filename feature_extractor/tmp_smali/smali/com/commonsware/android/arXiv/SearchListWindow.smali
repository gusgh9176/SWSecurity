.class public Lcom/commonsware/android/arXiv/SearchListWindow;
.super Landroid/app/ListActivity;
.source "SearchListWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;
    }
.end annotation


# static fields
.field public static final DECREASE_ID:I = 0x3

.field public static final FAVORITE_ID:I = 0x4

.field public static final INCREASE_ID:I = 0x2

.field private static final mAddViewSignature:[Ljava/lang/Class;

.field private static final mInvalidateOptionsMenuSignature:[Ljava/lang/Class;

.field private static final mRemoveAllViewsSignature:[Ljava/lang/Class;


# instance fields
.field private catName:Ljava/lang/String;

.field private categories:[Ljava/lang/String;

.field private creators:[Ljava/lang/String;

.field private descriptions:[Ljava/lang/String;

.field private droidDB:Lcom/commonsware/android/arXiv/arXivDB;

.field private favFeed:Lcom/commonsware/android/arXiv/Feed;

.field private fontSize:I

.field private handlerDoneLoading:Landroid/os/Handler;

.field private handlerSetList:Landroid/os/Handler;

.field private header:Landroid/widget/TextView;

.field private iFirstResultOnPage:I

.field private links:[Ljava/lang/String;

.field public list:Landroid/widget/ListView;

.field private listText:[Ljava/lang/String;

.field private listText2:[Ljava/lang/String;

.field private mAddView:Ljava/lang/reflect/Method;

.field private mAddViewArgs:[Ljava/lang/Object;

.field private mInvalidateOptionsMenu:Ljava/lang/reflect/Method;

.field private mInvalidateOptionsMenuArgs:[Ljava/lang/Object;

.field private mRemoveAllViews:Ljava/lang/reflect/Method;

.field private mRemoveAllViewsArgs:[Ljava/lang/Object;

.field private nResultsPerPage:I

.field private name:Ljava/lang/String;

.field private nextButton:Landroid/widget/ImageView;

.field private numberOfResultsOnPage:I

.field private numberOfTotalResults:I

.field private previousButton:Landroid/widget/ImageView;

.field private publishedDates:[Ljava/lang/String;

.field private query:Ljava/lang/String;

.field public thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

.field private titles:[Ljava/lang/String;

.field private txtInfo:Landroid/widget/TextView;

.field private updatedDates:[Ljava/lang/String;

.field private urlAddress:Ljava/lang/String;

.field private urlInput:Ljava/lang/String;

.field private vCategory:Ljava/lang/Boolean;

.field private vFavorite:Ljava/lang/Boolean;

.field private vLoaded:Ljava/lang/Boolean;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-array v0, v3, [Ljava/lang/Class;

    .line 113
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 112
    sput-object v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mRemoveAllViewsSignature:[Ljava/lang/Class;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 115
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/RemoteViews;

    aput-object v1, v0, v3

    .line 114
    sput-object v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mAddViewSignature:[Ljava/lang/Class;

    .line 116
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenuSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 96
    iput v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    .line 97
    const/16 v0, 0x1e

    iput v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->nResultsPerPage:I

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vFavorite:Ljava/lang/Boolean;

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vLoaded:Ljava/lang/Boolean;

    .line 120
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mAddViewArgs:[Ljava/lang/Object;

    .line 122
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenuArgs:[Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/commonsware/android/arXiv/SearchListWindow$1;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SearchListWindow$1;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->handlerSetList:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/commonsware/android/arXiv/SearchListWindow$2;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SearchListWindow$2;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->handlerDoneLoading:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/SearchListWindow;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vLoaded:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$1(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->listText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->numberOfResultsOnPage:I

    return v0
.end method

.method static synthetic access$11(Lcom/commonsware/android/arXiv/SearchListWindow;)I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->numberOfTotalResults:I

    return v0
.end method

.method static synthetic access$12(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vFavorite:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$13(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->nextButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->previousButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->titles:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->updatedDates:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->publishedDates:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->creators:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->links:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/commonsware/android/arXiv/SearchListWindow;)I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    return v0
.end method

.method static synthetic access$20(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->listText:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$21(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->listText2:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->descriptions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->categories:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->titles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->creators:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->updatedDates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->publishedDates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->categories:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->links:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->listText2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->descriptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vCategory:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$33(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/Feed;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->favFeed:Lcom/commonsware/android/arXiv/Feed;

    return-object v0
.end method

.method static synthetic access$34(Lcom/commonsware/android/arXiv/SearchListWindow;Lcom/commonsware/android/arXiv/arXivDB;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    return-void
.end method

.method static synthetic access$35(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/arXivDB;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    return-object v0
.end method

.method static synthetic access$36(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->handlerSetList:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$37(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->handlerDoneLoading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/commonsware/android/arXiv/SearchListWindow;I)V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/SearchListWindow;->waiting(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->txtInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->urlAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/commonsware/android/arXiv/SearchListWindow;I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->numberOfResultsOnPage:I

    return-void
.end method

.method static synthetic access$8(Lcom/commonsware/android/arXiv/SearchListWindow;I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->numberOfTotalResults:I

    return-void
.end method

.method static synthetic access$9(Lcom/commonsware/android/arXiv/SearchListWindow;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    return v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v4, 0x16

    const/16 v3, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 190
    :pswitch_0
    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    if-ge v2, v4, :cond_0

    .line 191
    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    if-ge v2, v3, :cond_1

    .line 192
    iput v3, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    .line 194
    :cond_1
    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    .line 195
    new-instance v2, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 196
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v3, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    invoke-virtual {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z

    .line 197
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 198
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vLoaded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->handlerSetList:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 204
    :pswitch_1
    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    if-le v2, v3, :cond_0

    .line 205
    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    if-le v2, v4, :cond_2

    .line 206
    iput v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    .line 208
    :cond_2
    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    .line 209
    new-instance v2, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 210
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v3, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    invoke-virtual {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z

    .line 211
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 212
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vLoaded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->handlerSetList:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 218
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/commonsware/android/arXiv/SearchListWindow;->favoritePressed(Landroid/view/View;)V

    goto :goto_0

    .line 188
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

    .line 251
    const-string v2, ""

    .line 252
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-static {p0, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 253
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->setProgressBarIndeterminateVisibility(Z)V

    .line 255
    new-instance v1, Lcom/commonsware/android/arXiv/SearchListWindow$4;

    invoke-direct {v1, p0, v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow;Landroid/app/ProgressDialog;)V

    .line 410
    .local v1, "t3":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 411
    return-void
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 522
    const/4 v0, 0x2

    const-string v1, "Increase Font"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 523
    const/4 v0, 0x3

    const-string v1, "Decrease Font"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 524
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vFavorite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x4

    const-string v1, "Add to Favorites"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 527
    :cond_0
    return-void
.end method

.method private waiting(I)V
    .locals 8
    .param p1, "n"    # I

    .prologue
    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 620
    .local v0, "t0":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 621
    .local v2, "t1":J
    sub-long v4, v2, v0

    int-to-long v6, p1

    .line 619
    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 622
    return-void
.end method


# virtual methods
.method public favoritePressed(Landroid/view/View;)V
    .locals 7
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 225
    new-instance v0, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 226
    const/4 v5, -0x1

    .line 227
    .local v5, "unread":I
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->urlInput:Ljava/lang/String;

    iget v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->numberOfTotalResults:I

    invoke-virtual/range {v0 .. v5}, Lcom/commonsware/android/arXiv/arXivDB;->insertFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 228
    const v0, 0x7f070004

    .line 229
    const/4 v1, 0x0

    .line 228
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 231
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vFavorite:Ljava/lang/Boolean;

    .line 232
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->version:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 234
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "InvalidateOptionsMenu"

    .line 235
    sget-object v2, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenuSignature:[Ljava/lang/Class;

    .line 234
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    .line 236
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenuArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    new-instance v6, Lcom/commonsware/android/arXiv/SearchListWindow$3;

    invoke-direct {v6, p0}, Lcom/commonsware/android/arXiv/SearchListWindow$3;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow;)V

    .line 246
    .local v6, "t9":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 247
    return-void

    .line 237
    .end local v6    # "t9":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public nextPressed(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 414
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    iget v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->nResultsPerPage:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://export.arxiv.org/api/query?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 416
    const-string v1, "&sortBy=lastUpdatedDate&sortOrder=descending&start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 417
    iget v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&max_results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->nResultsPerPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->urlAddress:Ljava/lang/String;

    .line 418
    invoke-direct {p0}, Lcom/commonsware/android/arXiv/SearchListWindow;->getInfoFromXML()V

    .line 419
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 424
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 425
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->requestWindowFeature(I)Z

    .line 426
    const v4, 0x7f030014

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->setContentView(I)V

    .line 428
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->version:I

    .line 430
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SearchListWindow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 431
    .local v3, "myIntent":Landroid/content/Intent;
    const-string v4, "keyname"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->name:Ljava/lang/String;

    .line 432
    const-string v4, "keyquery"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->query:Ljava/lang/String;

    .line 433
    const-string v4, "keyurl"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->urlInput:Ljava/lang/String;

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://export.arxiv.org/api/query?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->query:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 436
    const-string v5, "&sortBy=lastUpdatedDate&sortOrder=descending&start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 437
    iget v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&max_results="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->nResultsPerPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->urlAddress:Ljava/lang/String;

    .line 439
    const-string v4, "arXiv - "

    iget-object v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->urlAddress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->query:Ljava/lang/String;

    const-string v5, "cat:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vCategory:Ljava/lang/Boolean;

    .line 447
    :goto_0
    const v4, 0x7f09001d

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->header:Landroid/widget/TextView;

    .line 448
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SearchListWindow;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 449
    const-string v5, "fonts/LiberationSans.ttf"

    .line 448
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 450
    .local v0, "face":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->header:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->header:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const v4, 0x7f09001f

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->nextButton:Landroid/widget/ImageView;

    .line 455
    const v4, 0x7f09001e

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->previousButton:Landroid/widget/ImageView;

    .line 457
    iput-object p0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

    .line 459
    const v4, 0x7f09000a

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->txtInfo:Landroid/widget/TextView;

    .line 461
    new-instance v4, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v4, v5}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 462
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->getSize()I

    move-result v4

    iput v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    .line 464
    iget v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    if-nez v4, :cond_0

    .line 465
    const/16 v4, 0x10

    iput v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    .line 467
    :try_start_0
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->fontSize:I

    invoke-virtual {v4, v5}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 472
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v1

    .line 473
    .local v1, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/commonsware/android/arXiv/Feed;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 488
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 490
    invoke-direct {p0}, Lcom/commonsware/android/arXiv/SearchListWindow;->getInfoFromXML()V

    .line 491
    return-void

    .line 444
    .end local v0    # "face":Landroid/graphics/Typeface;
    .end local v1    # "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/commonsware/android/arXiv/Feed;>;"
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vCategory:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 473
    .restart local v0    # "face":Landroid/graphics/Typeface;
    .restart local v1    # "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/commonsware/android/arXiv/Feed;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/commonsware/android/arXiv/Feed;

    .line 474
    .local v2, "feed":Lcom/commonsware/android/arXiv/Feed;
    iget-object v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->query:Ljava/lang/String;

    iget-object v6, v2, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    iput-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->favFeed:Lcom/commonsware/android/arXiv/Feed;

    .line 476
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->vFavorite:Ljava/lang/Boolean;

    .line 477
    iget v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->version:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_1

    .line 480
    :try_start_1
    const-class v5, Landroid/app/Activity;

    const-string v6, "InvalidateOptionsMenu"

    .line 481
    sget-object v7, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenuSignature:[Ljava/lang/Class;

    .line 480
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    .line 482
    iget-object v5, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->mInvalidateOptionsMenuArgs:[Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 483
    :catch_0
    move-exception v5

    goto :goto_2

    .line 468
    .end local v1    # "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/commonsware/android/arXiv/Feed;>;"
    .end local v2    # "feed":Lcom/commonsware/android/arXiv/Feed;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/SearchListWindow;->populateMenu(Landroid/view/Menu;)V

    .line 496
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
    .line 507
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/commonsware/android/arXiv/SingleItemWindow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "keytitle"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->titles:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v1, "keylink"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->links:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v1, "keydescription"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->descriptions:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v1, "keycreator"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->creators:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v1, "keyname"

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0, v0}, Lcom/commonsware/android/arXiv/SearchListWindow;->startActivity(Landroid/content/Intent;)V

    .line 514
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/SearchListWindow;->applyMenuChoice(Landroid/view/MenuItem;)Z

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
    .line 501
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 502
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/SearchListWindow;->populateMenu(Landroid/view/Menu;)V

    .line 503
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public previousPressed(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 609
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    iget v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->nResultsPerPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://export.arxiv.org/api/query?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    const-string v1, "&sortBy=lastUpdatedDate&sortOrder=descending&start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 612
    iget v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->iFirstResultOnPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&max_results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->nResultsPerPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow;->urlAddress:Ljava/lang/String;

    .line 613
    invoke-direct {p0}, Lcom/commonsware/android/arXiv/SearchListWindow;->getInfoFromXML()V

    .line 614
    return-void
.end method

.method public updateWidget()V
    .locals 27

    .prologue
    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/commonsware/android/arXiv/SearchListWindow;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 532
    .local v3, "context":Landroid/content/Context;
    new-instance v21, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0x7f030000

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 534
    .local v21, "views":Landroid/widget/RemoteViews;
    new-instance v8, Landroid/content/Intent;

    const-class v23, Lcom/commonsware/android/arXiv/arXiv;

    move-object/from16 v0, v23

    invoke-direct {v8, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .local v8, "intent":Landroid/content/Intent;
    const-string v18, "widget"

    .line 536
    .local v18, "typestring":Ljava/lang/String;
    const-string v23, "keywidget"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "foobar://"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 538
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v3, v0, v8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 540
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    const v23, 0x7f090002

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 542
    new-instance v23, Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v6

    .line 544
    .local v6, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/commonsware/android/arXiv/Feed;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 546
    const-string v5, ""

    .line 548
    .local v5, "favText":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_0

    .line 550
    :try_start_0
    const-class v23, Landroid/widget/RemoteViews;

    const-string v24, "removeAllViews"

    .line 551
    sget-object v25, Lcom/commonsware/android/arXiv/SearchListWindow;->mRemoveAllViewsSignature:[Ljava/lang/Class;

    .line 550
    invoke-virtual/range {v23 .. v25}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/SearchListWindow;->mRemoveAllViews:Ljava/lang/reflect/Method;

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const v25, 0x7f090002

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mRemoveAllViews:Ljava/lang/reflect/Method;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 559
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1

    .line 606
    :cond_0
    return-void

    .line 559
    :cond_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/commonsware/android/arXiv/Feed;

    .line 561
    .local v7, "feed":Lcom/commonsware/android/arXiv/Feed;
    iget-object v0, v7, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "query"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 563
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "http://export.arxiv.org/api/query?"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 564
    const-string v25, "&sortBy=lastUpdatedDate&sortOrder=descending&start=0&max_results=1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 563
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 566
    .local v20, "urlAddressTemp":Ljava/lang/String;
    const/4 v12, 0x0

    .line 568
    .local v12, "numberOfTotalResults":I
    :try_start_1
    new-instance v19, Ljava/net/URL;

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 569
    .local v19, "url":Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v15

    .line 570
    .local v15, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v15}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v14

    .line 571
    .local v14, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v14}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v22

    .line 572
    .local v22, "xr":Lorg/xml/sax/XMLReader;
    new-instance v10, Lcom/commonsware/android/arXiv/XMLHandlerSearch;

    invoke-direct {v10}, Lcom/commonsware/android/arXiv/XMLHandlerSearch;-><init>()V

    .line 573
    .local v10, "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 574
    new-instance v24, Lorg/xml/sax/InputSource;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 575
    iget v12, v10, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numTotalItems:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    .end local v10    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    .end local v14    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v15    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v19    # "url":Ljava/net/URL;
    .end local v22    # "xr":Lorg/xml/sax/XMLReader;
    :goto_2
    new-instance v16, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const v25, 0x7f030001

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 580
    .local v16, "tempViews":Landroid/widget/RemoteViews;
    iget-object v5, v7, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    .line 581
    iget v0, v7, Lcom/commonsware/android/arXiv/Feed;->count:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 582
    iget v0, v7, Lcom/commonsware/android/arXiv/Feed;->count:I

    move/from16 v24, v0

    sub-int v11, v12, v24

    .line 583
    .local v11, "newArticles":I
    const v24, 0x7f090003

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 587
    .end local v11    # "newArticles":I
    :goto_3
    const v24, 0x7f090004

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 590
    :try_start_2
    const-class v24, Landroid/widget/RemoteViews;

    const-string v25, "addView"

    .line 591
    sget-object v26, Lcom/commonsware/android/arXiv/SearchListWindow;->mAddViewSignature:[Ljava/lang/Class;

    .line 590
    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/SearchListWindow;->mAddView:Ljava/lang/reflect/Method;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mAddViewArgs:[Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const v26, 0x7f090002

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mAddViewArgs:[Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-object v16, v24, v25

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mAddView:Ljava/lang/reflect/Method;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->mAddViewArgs:[Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 600
    .end local v12    # "numberOfTotalResults":I
    .end local v16    # "tempViews":Landroid/widget/RemoteViews;
    .end local v20    # "urlAddressTemp":Ljava/lang/String;
    :cond_2
    :goto_4
    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v24, v0

    const-class v25, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    .local v17, "thisWidget":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SearchListWindow;->thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    .line 602
    .local v9, "manager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 585
    .end local v9    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v17    # "thisWidget":Landroid/content/ComponentName;
    .restart local v12    # "numberOfTotalResults":I
    .restart local v16    # "tempViews":Landroid/widget/RemoteViews;
    .restart local v20    # "urlAddressTemp":Ljava/lang/String;
    :cond_3
    const v24, 0x7f090003

    const-string v25, "0"

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 596
    :catch_0
    move-exception v4

    .line 597
    .local v4, "ef":Ljava/lang/Exception;
    const v24, 0x7f090001

    const-string v25, "Widget only supported on Android 2.1+"

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    .line 576
    .end local v4    # "ef":Ljava/lang/Exception;
    .end local v16    # "tempViews":Landroid/widget/RemoteViews;
    :catch_1
    move-exception v24

    goto/16 :goto_2

    .line 557
    .end local v7    # "feed":Lcom/commonsware/android/arXiv/Feed;
    .end local v12    # "numberOfTotalResults":I
    .end local v20    # "urlAddressTemp":Ljava/lang/String;
    :catch_2
    move-exception v23

    goto/16 :goto_0
.end method
