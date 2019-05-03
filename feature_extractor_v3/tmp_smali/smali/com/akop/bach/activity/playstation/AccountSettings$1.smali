.class Lcom/akop/bach/activity/playstation/AccountSettings$1;
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
    .line 109
    iput-object p1, p0, Lcom/akop/bach/activity/playstation/AccountSettings$1;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/AccountSettings$1;->this$0:Lcom/akop/bach/activity/playstation/AccountSettings;

    invoke-static {v0}, Lcom/akop/bach/activity/playstation/AccountSettings;->access$000(Lcom/akop/bach/activity/playstation/AccountSettings;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method
