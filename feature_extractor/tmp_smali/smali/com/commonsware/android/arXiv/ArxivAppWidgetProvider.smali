.class public Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ArxivAppWidgetProvider.java"


# static fields
.field private static final mAddViewSignature:[Ljava/lang/Class;

.field private static final mRemoveAllViewsSignature:[Ljava/lang/Class;


# instance fields
.field private favText:Ljava/lang/String;

.field private favorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/commonsware/android/arXiv/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private iCounter:Ljava/lang/Integer;

.field private mAddView:Ljava/lang/reflect/Method;

.field private mAddViewArgs:[Ljava/lang/Object;

.field private mRemoveAllViews:Ljava/lang/reflect/Method;

.field private mRemoveAllViewsArgs:[Ljava/lang/Object;

.field private thisContext:Landroid/content/Context;

.field private views:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-array v0, v3, [Ljava/lang/Class;

    .line 50
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mRemoveAllViewsSignature:[Ljava/lang/Class;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 52
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/RemoteViews;

    aput-object v1, v0, v3

    .line 51
    sput-object v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mAddViewSignature:[Ljava/lang/Class;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mAddViewArgs:[Ljava/lang/Object;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->iCounter:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->favorites:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->thisContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->favText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->favText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mAddViewSignature:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$6(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mAddView:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic access$7(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mAddViewArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mAddView:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$9(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->views:Landroid/widget/RemoteViews;

    return-object v0
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 64
    move-object/from16 v0, p3

    array-length v1, v0

    .line 65
    .local v1, "N":I
    move-object/from16 v7, p2

    .line 67
    .local v7, "myAppWidgetManager":Landroid/appwidget/AppWidgetManager;
    iput-object p1, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->thisContext:Landroid/content/Context;

    .line 70
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 197
    return-void

    .line 71
    :cond_0
    aget v2, p3, v5

    .line 74
    .local v2, "appWidgetId":I
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/commonsware/android/arXiv/arXiv;

    invoke-direct {v6, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v6, "intent":Landroid/content/Intent;
    const-string v10, "widget"

    .line 76
    .local v10, "typestring":Ljava/lang/String;
    const-string v11, "keywidget"

    invoke-virtual {v6, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "foobar://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p1, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 81
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x7f030000

    invoke-direct {v11, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->views:Landroid/widget/RemoteViews;

    .line 82
    iget-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->views:Landroid/widget/RemoteViews;

    const v12, 0x7f090002

    invoke-virtual {v11, v12, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 85
    :try_start_0
    const-class v11, Landroid/widget/RemoteViews;

    const-string v12, "removeAllViews"

    .line 86
    sget-object v13, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mRemoveAllViewsSignature:[Ljava/lang/Class;

    .line 85
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iput-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mRemoveAllViews:Ljava/lang/reflect/Method;

    .line 87
    iget-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f090002

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 88
    iget-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mRemoveAllViews:Ljava/lang/reflect/Method;

    iget-object v12, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->views:Landroid/widget/RemoteViews;

    iget-object v13, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    new-instance v3, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v3, p1}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    .line 94
    .local v3, "droidDB":Lcom/commonsware/android/arXiv/arXivDB;
    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->favorites:Ljava/util/List;

    .line 95
    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 97
    const-string v11, ""

    iput-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->favText:Ljava/lang/String;

    .line 99
    const-string v11, "arXiv"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Updating widget - size "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->favorites:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->iCounter:Ljava/lang/Integer;

    .line 102
    iget-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->favorites:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 103
    iget-object v11, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->favorites:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 110
    :cond_2
    new-instance v9, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;

    invoke-direct {v9, p0, v7, v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;-><init>(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;Landroid/appwidget/AppWidgetManager;I)V

    .line 194
    .local v9, "t9":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 103
    .end local v9    # "t9":Ljava/lang/Thread;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/commonsware/android/arXiv/Feed;

    .line 104
    .local v4, "feed":Lcom/commonsware/android/arXiv/Feed;
    iget-object v12, v4, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    const-string v13, "query"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 105
    iget-object v12, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->iCounter:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->iCounter:Ljava/lang/Integer;

    goto :goto_2

    .line 90
    .end local v3    # "droidDB":Lcom/commonsware/android/arXiv/arXivDB;
    .end local v4    # "feed":Lcom/commonsware/android/arXiv/Feed;
    :catch_0
    move-exception v11

    goto :goto_1
.end method
