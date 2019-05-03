.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2$1;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;->onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;

    iget-object v2, v2, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-virtual {v2}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2$1;->val$e:Ljava/lang/Exception;

    invoke-static {v2, v3}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 146
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    return-void
.end method
