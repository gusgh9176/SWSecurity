.class Lcom/akop/bach/activity/playstation/AccountSettings$3;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 144
    iput-object p1, p0, Lcom/akop/bach/activity/playstation/AccountSettings$3;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "summary":Ljava/lang/String;
    iget-object v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings$3;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-static {v2}, Lcom/akop/bach/activity/playstation/AccountSettings;->access$400(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "index":I
    iget-object v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings$3;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-static {v2}, Lcom/akop/bach/activity/playstation/AccountSettings;->access$400(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/activity/playstation/AccountSettings$3;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-static {v3}, Lcom/akop/bach/activity/playstation/AccountSettings;->access$400(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings$3;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-static {v2}, Lcom/akop/bach/activity/playstation/AccountSettings;->access$400(Lcom/akop/bach/activity/playstation/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/akop/bach/activity/playstation/AccountSettings$3;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v2, p2}, Lcom/akop/bach/activity/playstation/AccountSettings;->access$502(Lcom/akop/bach/activity/playstation/AccountSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    const/4 v2, 0x0

    return v2
.end method
