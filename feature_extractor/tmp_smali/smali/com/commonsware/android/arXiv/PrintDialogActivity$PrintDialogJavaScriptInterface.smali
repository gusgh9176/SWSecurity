.class final Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;
.super Ljava/lang/Object;
.source "PrintDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/PrintDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PrintDialogJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/PrintDialogActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;->this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 9

    .prologue
    .line 79
    :try_start_0
    iget-object v7, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;->this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;

    invoke-virtual {v7}, Lcom/commonsware/android/arXiv/PrintDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 81
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;->this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;

    iget-object v7, v7, Lcom/commonsware/android/arXiv/PrintDialogActivity;->cloudPrintIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 80
    invoke-virtual {v3, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 82
    .local v5, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x1000

    new-array v1, v7, [B

    .line 85
    .local v1, "buffer":[B
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 86
    .local v6, "n":I
    :goto_0
    if-gez v6, :cond_0

    .line 90
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    .line 93
    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "contentBase64":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "data:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;->this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;

    iget-object v8, v8, Lcom/commonsware/android/arXiv/PrintDialogActivity;->cloudPrintIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";base64,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 96
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "contentBase64":Ljava/lang/String;
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "n":I
    :goto_1
    return-object v7

    .line 87
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "n":I
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 88
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_0

    .line 97
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "n":I
    :catch_0
    move-exception v4

    .line 98
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 102
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, ""

    goto :goto_1

    .line 99
    :catch_1
    move-exception v4

    .line 100
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;->this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;

    iget-object v0, v0, Lcom/commonsware/android/arXiv/PrintDialogActivity;->cloudPrintIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "dataUrl"

    return-object v0
.end method

.method public onPostMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "cp-dialog-on-close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/commonsware/android/arXiv/PrintDialogActivity$PrintDialogJavaScriptInterface;->this$0:Lcom/commonsware/android/arXiv/PrintDialogActivity;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/PrintDialogActivity;->finish()V

    .line 109
    :cond_0
    return-void
.end method
