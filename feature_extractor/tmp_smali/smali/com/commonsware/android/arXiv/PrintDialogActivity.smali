.class public Lcom/commonsware/android/arXiv/PrintDialogActivity;
.super Landroid/app/Activity;
.source "PrintDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;,
        Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;
    }
.end annotation


# static fields
.field private static final CLOSE_POST_MESSAGE_NAME:Ljava/lang/String; = "cp-dialog-on-close"

.field private static final JS_INTERFACE:Ljava/lang/String; = "AndroidPrintDialog"

.field private static final PRINT_DIALOG_URL:Ljava/lang/String; = "http://www.google.com/cloudprint/dialog.html"

.field private static final ZXING_SCAN_REQUEST:I = 0x100cf

.field private static final ZXING_URL:Ljava/lang/String; = "http://zxing.appspot.com"


# instance fields
.field cloudPrintIntent:Landroid/content/Intent;

.field private dialogWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const v0, 0x100cf

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity;->dialogWebView:Landroid/webkit/WebView;

    const-string v1, "SCAN_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/commonsware/android/arXiv/PrintDialogActivity;->setContentView(I)V

    .line 47
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/commonsware/android/arXiv/PrintDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity;->dialogWebView:Landroid/webkit/WebView;

    .line 48
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/PrintDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity;->cloudPrintIntent:Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity;->dialogWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 51
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v1, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity;->dialogWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;-><init>(Lcom/commonsware/android/arXiv/PrintDialogActivity;Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    iget-object v1, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity;->dialogWebView:Landroid/webkit/WebView;

    .line 55
    new-instance v2, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;

    invoke-direct {v2, p0}, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;-><init>(Lcom/commonsware/android/arXiv/PrintDialogActivity;)V

    const-string v3, "AndroidPrintDialog"

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity;->dialogWebView:Landroid/webkit/WebView;

    const-string v2, "http://www.google.com/cloudprint/dialog.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 58
    return-void
.end method
