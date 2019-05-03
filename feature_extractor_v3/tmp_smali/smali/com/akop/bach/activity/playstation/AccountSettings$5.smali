.class Lcom/akop/bach/activity/playstation/AccountSettings$5;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/playstation/AccountSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/playstation/AccountSettings;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/playstation/AccountSettings;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/akop/bach/activity/playstation/AccountSettings$5;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings$5;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    iget-object v1, p0, Lcom/akop/bach/activity/playstation/AccountSettings$5;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-static {v1}, Lcom/akop/bach/activity/playstation/AccountSettings;->access$900(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/akop/bach/activity/playstation/AccountSettings;->access$802(Lcom/akop/bach/activity/playstation/AccountSettings;Z)Z

    .line 187
    const/4 v0, 0x0

    return v0
.end method
