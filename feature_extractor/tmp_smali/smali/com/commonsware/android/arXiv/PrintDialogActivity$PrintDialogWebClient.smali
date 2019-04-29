.class final Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;
.super Landroid/webkit/WebViewClient;
.source "PrintDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/PrintDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintDialogWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;


# direct methods
.method private constructor <init>(Lcom/commonsware/android/arXiv/PrintDialogActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;->this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/commonsware/android/arXiv/PrintDialogActivity;Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;-><init>(Lcom/commonsware/android/arXiv/PrintDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "http://www.google.com/cloudprint/dialog.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "javascript:printDialog.setPrintDocument(printDialog.createPrintDocument(window.AndroidPrintDialog.getType(),window.AndroidPrintDialog.getTitle(),window.AndroidPrintDialog.getContent()))"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 141
    const-string v0, "javascript:window.addEventListener(\'message\',function(evt){window.AndroidPrintDialog.onPostMessage(evt.data)}, false)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v2, "http://zxing.appspot.com"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v1, Landroid/content/Intent;

    .line 117
    const-string v2, "com.google.zxing.client.android.SCAN"

    .line 116
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "intentScan":Landroid/content/Intent;
    const-string v2, "SCAN_MODE"

    const-string v3, "QR_CODE_MODE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogWebClient;->this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;

    const v3, 0x100cf

    invoke-virtual {v2, v1, v3}, Lcom/commonsware/android/arXiv/PrintDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "intentScan":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 121
    .restart local v1    # "intentScan":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "error":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "error":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intentScan":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
