.class public Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "SentMessagesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;,
        Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$OnMessageSelectedListener;
    }
.end annotation


# static fields
.field private static final COLUMN_PREVIEW:I = 0x1

.field private static final COLUMN_RECIPIENTS:I = 0x4

.field private static final COLUMN_SENT:I = 0x3

.field private static final COLUMN_TYPE:I = 0x2

.field private static final DIALOG_CONFIRM:I = 0x2

.field public static final PROJ:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Landroid/widget/TextView;

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Preview"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MessageType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Sent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Recipients"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 153
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 184
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 185
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mTitleId:J

    .line 186
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mListView:Landroid/widget/ListView;

    .line 187
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mMessage:Landroid/widget/TextView;

    .line 188
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 192
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;-><init>()V

    .line 194
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 196
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 198
    return-object v1
.end method


# virtual methods
.method public okClicked(IJLjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "id"    # J
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 372
    sget-object v2, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 376
    .local v1, "sentMessage":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v1    # "sentMessage":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local v1    # "sentMessage":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 257
    iget-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 261
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 348
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;

    if-eqz v2, :cond_0

    .line 350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 364
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 353
    :pswitch_0
    const/4 v2, 0x2

    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08005d

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v2, v3, v4, v6, v7}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v0

    .line 357
    .local v0, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v0, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 358
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 360
    const/4 v2, 0x1

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b012d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 204
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 206
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 209
    .local v6, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 211
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "account"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 212
    sget-object v1, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Sent DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getFirstTitleId(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mTitleId:J

    .line 218
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 221
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mTitleId:J

    .line 224
    :cond_1
    invoke-virtual {p0, v7}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->setHasOptionsMenu(Z)V

    .line 225
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 333
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 335
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 338
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 339
    const v0, 0x7f0b0129

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 340
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 305
    const v0, 0x7f0a001e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 306
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 231
    if-nez p2, :cond_0

    move-object v0, v1

    .line 249
    :goto_0
    return-object v0

    .line 234
    :cond_0
    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "layout":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 239
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mMessage:Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 242
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mListView:Landroid/widget/ListView;

    .line 243
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 247
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
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
    .line 278
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput-wide p4, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mTitleId:J

    .line 279
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 281
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$OnMessageSelectedListener;

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$OnMessageSelectedListener;

    .line 284
    .local v0, "listener":Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$OnMessageSelectedListener;
    invoke-interface {v0, p4, p5}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$OnMessageSelectedListener;->onMessageSelected(J)V

    .line 286
    .end local v0    # "listener":Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$OnMessageSelectedListener;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 326
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 322
    :pswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b011c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 292
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 313
    const v0, 0x7f0b011b

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 314
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 298
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 271
    const-string v0, "currentId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 273
    :cond_0
    return-void
.end method
