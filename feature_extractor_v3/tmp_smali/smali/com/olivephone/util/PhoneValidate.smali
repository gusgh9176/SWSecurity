.class public Lcom/olivephone/util/PhoneValidate;
.super Ljava/lang/Object;
.source "PhoneValidate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPhone(Ljava/lang/String;)Z
    .locals 4
    .param p0, "phone2"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v2, "^1(3[0-9]|5[012356789]|8[0789])\\d{8}$"

    .line 25
    .local v2, "regex":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 26
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 27
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    return v3
.end method

.method public static validate(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 11
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    const-string v1, "\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 13
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 20
    .end local v0    # "toast":Landroid/widget/Toast;
    :goto_0
    return v1

    .line 15
    :cond_0
    invoke-static {p0}, Lcom/olivephone/util/PhoneValidate;->checkPhone(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    const-string v1, "\u53f7\u7801\u8f93\u5165\u4e0d\u6b63\u786e"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 17
    .restart local v0    # "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 18
    goto :goto_0

    .line 20
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
