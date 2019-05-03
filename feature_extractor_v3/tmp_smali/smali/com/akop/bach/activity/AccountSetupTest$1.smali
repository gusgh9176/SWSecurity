.class Lcom/akop/bach/activity/AccountSetupTest$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "AccountSetupTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/AccountSetupTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/AccountSetupTest;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/AccountSetupTest;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/akop/bach/activity/AccountSetupTest$1;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-direct {p0, p2}, Lcom/akop/bach/TaskController$TaskListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p2, Ljava/io/IOException;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/akop/bach/parser/ParserException;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/akop/bach/parser/AuthenticationException;

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest$1;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v1}, Lcom/akop/bach/activity/AccountSetupTest;->access$400(Lcom/akop/bach/activity/AccountSetupTest;)Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->showErrorDialog(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest$1;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v1}, Lcom/akop/bach/activity/AccountSetupTest;->access$400(Lcom/akop/bach/activity/AccountSetupTest;)Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->complete(Z)V

    .line 130
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    :cond_2
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$1;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    check-cast p3, Landroid/content/ContentValues;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-static {v0, p3}, Lcom/akop/bach/activity/AccountSetupTest;->access$502(Lcom/akop/bach/activity/AccountSetupTest;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 138
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$1;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v0}, Lcom/akop/bach/activity/AccountSetupTest;->access$400(Lcom/akop/bach/activity/AccountSetupTest;)Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->complete(Z)V

    .line 139
    return-void
.end method
