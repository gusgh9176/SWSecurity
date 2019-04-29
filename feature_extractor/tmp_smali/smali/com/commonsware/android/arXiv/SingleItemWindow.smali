.class public Lcom/commonsware/android/arXiv/SingleItemWindow;
.super Landroid/app/Activity;
.source "SingleItemWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DECREASE_ID:I = 0x4

.field public static final INCREASE_ID:I = 0x3

.field public static final SHARE_ID:I = 0x2


# instance fields
.field private abstractTextView:Landroid/widget/TextView;

.field private authors:[Ljava/lang/String;

.field private creator:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private droidDB:Lcom/commonsware/android/arXiv/arXivDB;

.field private fileSizeTextView:Landroid/widget/TextView;

.field private fontSize:I

.field private handlerDoneLoading:Landroid/os/Handler;

.field private handlerFailed:Landroid/os/Handler;

.field private handlerNoStorage:Landroid/os/Handler;

.field private handlerNoViewer:Landroid/os/Handler;

.field private headerTextView:Landroid/widget/TextView;

.field private linLay:Landroid/widget/LinearLayout;

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private numberOfAuthors:I

.field private pdfPath:Ljava/lang/String;

.field private progBar:Landroid/widget/ProgressBar;

.field private scrollView:Landroid/widget/ScrollView;

.field private thisActivity:Landroid/content/Context;

.field private title:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;

.field private vLoop:Ljava/lang/Boolean;

.field private vStorage:Ljava/lang/Boolean;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->vLoop:Ljava/lang/Boolean;

    .line 99
    new-instance v0, Lcom/commonsware/android/arXiv/SingleItemWindow$1;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SingleItemWindow$1;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->handlerNoViewer:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/commonsware/android/arXiv/SingleItemWindow$2;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SingleItemWindow$2;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->handlerNoStorage:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/commonsware/android/arXiv/SingleItemWindow$3;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SingleItemWindow$3;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->handlerFailed:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcom/commonsware/android/arXiv/SingleItemWindow$4;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SingleItemWindow$4;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->handlerDoneLoading:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->thisActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->vStorage:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$10(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->vLoop:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$11(Lcom/commonsware/android/arXiv/SingleItemWindow;Lcom/commonsware/android/arXiv/arXivDB;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    return-void
.end method

.method static synthetic access$12(Lcom/commonsware/android/arXiv/SingleItemWindow;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->numberOfAuthors:I

    return v0
.end method

.method static synthetic access$13(Lcom/commonsware/android/arXiv/SingleItemWindow;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/commonsware/android/arXiv/SingleItemWindow;)Lcom/commonsware/android/arXiv/arXivDB;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    return-object v0
.end method

.method static synthetic access$15(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->handlerNoViewer:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->handlerNoStorage:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$17(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->handlerFailed:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->handlerDoneLoading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->pdfPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->vStorage:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->vLoop:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$5(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fileSizeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->progBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$7(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->pdfPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->title:Ljava/lang/String;

    return-object v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 158
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 137
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v2, "android.intent.extra.SUBJECT"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->title:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " (arXiv article)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->title:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_1
    iget v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    .line 145
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->refreshLinLay()V

    .line 146
    new-instance v2, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->thisActivity:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 147
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    invoke-virtual {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z

    .line 148
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    goto :goto_0

    .line 151
    :pswitch_2
    iget v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    .line 152
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->refreshLinLay()V

    .line 153
    new-instance v2, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->thisActivity:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 154
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    invoke-virtual {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z

    .line 155
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 281
    const/4 v0, 0x2

    const v1, 0x7f070006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 282
    const/4 v0, 0x3

    const-string v1, "Increase Font"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 283
    const/4 v0, 0x4

    const-string v1, "Decrease Font"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 284
    return-void
.end method

.method private printSize()V
    .locals 1

    .prologue
    .line 509
    new-instance v0, Lcom/commonsware/android/arXiv/SingleItemWindow$6;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SingleItemWindow$6;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow;)V

    .line 538
    .local v0, "t4":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 539
    return-void
.end method


# virtual methods
.method public authorPressed(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    add-int/lit16 v2, v4, -0x3e8

    .line 185
    .local v2, "position":I
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v1, "myIntent":Landroid/content/Intent;
    const-string v4, "keyname"

    iget-object v5, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "  "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "authortext":Ljava/lang/String;
    const-string v4, " "

    const-string v5, "+"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "search_query=au:%22"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%22"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://export.arxiv.org/api/query?search_query="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    const-string v5, "&sortBy=lastUpdatedDate&sortOrder=descending&start=0&max_results=20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "urlad":Ljava/lang/String;
    const-string v4, "keyurl"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v4, "keyquery"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v1}, Lcom/commonsware/android/arXiv/SingleItemWindow;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    add-int/lit16 v2, v4, -0x3e8

    .line 164
    .local v2, "position":I
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v1, "myIntent":Landroid/content/Intent;
    const-string v4, "keyname"

    iget-object v5, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "  "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "authortext":Ljava/lang/String;
    const-string v4, " "

    const-string v5, "+"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "search_query=au:%22"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%22"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://export.arxiv.org/api/query?search_query="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    const-string v5, "&sortBy=lastUpdatedDate&sortOrder=descending&start=0&max_results=20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "urlad":Ljava/lang/String;
    const-string v4, "keyurl"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v4, "keyquery"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v1}, Lcom/commonsware/android/arXiv/SingleItemWindow;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->requestWindowFeature(I)Z

    .line 209
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->setContentView(I)V

    .line 211
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->version:I

    .line 213
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, "myIntent":Landroid/content/Intent;
    const-string v2, "keyname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->name:Ljava/lang/String;

    .line 215
    const-string v2, "keytitle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->title:Ljava/lang/String;

    .line 216
    const-string v2, "keycreator"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->creator:Ljava/lang/String;

    .line 217
    const-string v2, "keydescription"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->description:Ljava/lang/String;

    .line 218
    const-string v2, "keylink"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->link:Ljava/lang/String;

    .line 220
    const v2, 0x7f090024

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->progBar:Landroid/widget/ProgressBar;

    .line 223
    const v2, 0x7f090023

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fileSizeTextView:Landroid/widget/TextView;

    .line 225
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->headerTextView:Landroid/widget/TextView;

    .line 226
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 227
    const-string v3, "fonts/LiberationSans.ttf"

    .line 226
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 228
    .local v0, "face":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->headerTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->headerTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->description:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->description:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->description:Ljava/lang/String;

    const-string v3, "<p>"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->description:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->description:Ljava/lang/String;

    const-string v3, "</p>"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->description:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->titleTextView:Landroid/widget/TextView;

    .line 240
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->abstractTextView:Landroid/widget/TextView;

    .line 242
    iput-object p0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->thisActivity:Landroid/content/Context;

    .line 244
    new-instance v2, Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->thisActivity:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 245
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->getSize()I

    move-result v2

    iput v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    .line 247
    iget v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    if-nez v2, :cond_0

    .line 248
    const/16 v2, 0x10

    iput v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    .line 249
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget v3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    invoke-virtual {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;->changeSize(I)Z

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 253
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->scrollView:Landroid/widget/ScrollView;

    .line 255
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->refreshLinLay()V

    .line 257
    iget v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->version:I

    const/4 v3, 0x6

    if-le v2, v3, :cond_1

    .line 258
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->setProgressBarIndeterminateVisibility(Z)V

    .line 259
    invoke-direct {p0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->printSize()V

    .line 261
    :cond_1
    return-void

    .line 236
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/SingleItemWindow;->populateMenu(Landroid/view/Menu;)V

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->vLoop:Ljava/lang/Boolean;

    .line 273
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/SingleItemWindow;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pressedPDFButton(Landroid/view/View;)V
    .locals 7
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 288
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 290
    .local v3, "version":I
    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 292
    new-instance v2, Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    invoke-direct {v2, p0}, Lcom/commonsware/android/arXiv/SingleItemWindow$5;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow;)V

    .line 494
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 506
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->thisActivity:Landroid/content/Context;

    .line 498
    const v5, 0x7f070002

    .line 499
    const/4 v6, 0x0

    .line 497
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 499
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 500
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SingleItemWindow;->link:Ljava/lang/String;

    const-string v5, "abs"

    const-string v6, "pdf"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "pdfaddress":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 502
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 501
    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 503
    .local v0, "myIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public refreshLinLay()V
    .locals 19

    .prologue
    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->titleTextView:Landroid/widget/TextView;

    const/4 v15, 0x5

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x5

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->titleTextView:Landroid/widget/TextView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 553
    :goto_0
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->abstractTextView:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Abstract: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->description:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->abstractTextView:Landroid/widget/TextView;

    const/4 v15, 0x5

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x5

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->abstractTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->abstractTextView:Landroid/widget/TextView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<begin>"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->creator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n</begin>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 563
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, "creatort":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 569
    .local v8, "res":Landroid/content/res/Resources;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v11

    .line 570
    .local v11, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    .line 571
    .local v10, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    .line 572
    .local v13, "xr":Lorg/xml/sax/XMLReader;
    new-instance v7, Lcom/commonsware/android/arXiv/XMLHandlerCreator;

    invoke-direct {v7}, Lcom/commonsware/android/arXiv/XMLHandlerCreator;-><init>()V

    .line 573
    .local v7, "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    invoke-interface {v13, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 574
    new-instance v14, Lorg/xml/sax/InputSource;

    new-instance v15, Ljava/io/StringReader;

    invoke-direct {v15, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v13, v14}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 575
    iget v14, v7, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    .line 576
    iget v14, v7, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->numberOfAuthors:I

    .line 577
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v14, v7, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v6, v14, :cond_0

    .line 610
    .end local v6    # "i":I
    .end local v7    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v10    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v11    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v13    # "xr":Lorg/xml/sax/XMLReader;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->abstractTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14}, Landroid/widget/ScrollView;->removeAllViews()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 616
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 617
    return-void

    .line 578
    .restart local v6    # "i":I
    .restart local v7    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v10    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v11    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v13    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->creators:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    .line 580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->thisActivity:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f030002

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 582
    .local v1, "authorLL":Landroid/widget/LinearLayout;
    const v14, 0x7f090005

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 583
    .local v12, "temptv":Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "   "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 585
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 586
    move-object/from16 v0, p0

    iget v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->version:I

    const/16 v15, 0xb

    if-ge v14, v15, :cond_1

    .line 588
    const v14, 0x1080062

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 587
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    :goto_4
    add-int/lit16 v14, v6, 0x3e8

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setId(I)V

    .line 594
    move-object/from16 v0, p0

    iget v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->fontSize:I

    int-to-float v14, v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 596
    new-instance v9, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 597
    .local v9, "rulerin":Landroid/view/View;
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 598
    .local v2, "blankview1":Landroid/view/View;
    new-instance v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 599
    .local v3, "blankview2":Landroid/view/View;
    const v14, -0xc0c4c5

    invoke-virtual {v9, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, 0x140

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, 0x140

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->linLay:Landroid/widget/LinearLayout;

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, 0x140

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v3, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 590
    .end local v2    # "blankview1":Landroid/view/View;
    .end local v3    # "blankview2":Landroid/view/View;
    .end local v9    # "rulerin":Landroid/view/View;
    :cond_1
    const v14, 0x7f020007

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 606
    .end local v1    # "authorLL":Landroid/widget/LinearLayout;
    .end local v6    # "i":I
    .end local v7    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v10    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v11    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v12    # "temptv":Landroid/widget/TextView;
    .end local v13    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v5

    .line 607
    .local v5, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/commonsware/android/arXiv/SingleItemWindow;->authors:[Ljava/lang/String;

    goto/16 :goto_2

    .line 614
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    goto/16 :goto_3

    .line 550
    .end local v4    # "creatort":Ljava/lang/String;
    :catch_2
    move-exception v14

    goto/16 :goto_0
.end method
