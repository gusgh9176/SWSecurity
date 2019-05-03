.class Lcom/akop/bach/activity/xboxlive/AccountSettings$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/AccountSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/AccountSettings;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings$1;->this$0:Lcom/akop/bach/activity/xboxlive/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/AccountSettings$1;->this$0:Lcom/akop/bach/activity/xboxlive/AccountSettings;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->access$000(Lcom/akop/bach/activity/xboxlive/AccountSettings;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method
