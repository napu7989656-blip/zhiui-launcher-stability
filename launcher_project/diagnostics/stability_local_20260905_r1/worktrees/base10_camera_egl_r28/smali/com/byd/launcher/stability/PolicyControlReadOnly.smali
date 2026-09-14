.class public final Lcom/byd/launcher/stability/PolicyControlReadOnly;
.super Ljava/lang/Object;
.source "PolicyControlReadOnly.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configure(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f08026f

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/byd/launcher/stability/PolicyControlReadOnly;->lock(Landroid/view/View;)V

    const v0, 0x7f08026d

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/byd/launcher/stability/PolicyControlReadOnly;->lock(Landroid/view/View;)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f0802df

    .line 51
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/byd/launcher/stability/PolicyControlReadOnly;->describe(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/byd/launcher/stability/PolicyControlReadOnly;->label(Landroid/view/View;Ljava/lang/String;)V

    const v0, 0x7f0802de

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "\u539f\u8f66\u5bfc\u822a\u680f\uff08\u53ea\u8bfb\uff0c\u4fdd\u7559\u5df2\u4fdd\u5b58\u8bbe\u7f6e\uff09"

    invoke-static {p0, v0}, Lcom/byd/launcher/stability/PolicyControlReadOnly;->label(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static describe(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 29
    const-string p0, "\u7cfb\u7edf\u680f\u7b56\u7565\uff08\u53ea\u8bfb\uff09\uff1a\u65e0\u6cd5\u8bfb\u53d6\uff0c\u672a\u4f5c\u4fee\u6539"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 30
    const-string p0, "\u7cfb\u7edf\u680f\u7b56\u7565\uff08\u53ea\u8bfb\uff09\uff1a\u672a\u8bbe\u7f6e\uff0c\u672a\u4f5c\u4fee\u6539"

    return-object p0

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "\u7cfb\u7edf\u680f\u7b56\u7565\uff08\u53ea\u8bfb\uff09\uff1a\u5b58\u5728\u7a7a\u503c\uff0c\u672a\u4f5c\u4fee\u6539"

    return-object p0

    .line 32
    :cond_2
    const-string p1, "null"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "\u7cfb\u7edf\u680f\u7b56\u7565\uff08\u53ea\u8bfb\uff09\uff1a\u68c0\u6d4b\u5230\u65e7\u7a7a\u503c\u7b56\u7565\uff0c\u672a\u4f5c\u4fee\u6539"

    return-object p0

    :cond_3
    const/16 p1, 0xa

    const/16 v0, 0x20

    .line 33
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x60

    if-le p1, v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u7cfb\u7edf\u680f\u7b56\u7565\uff08\u53ea\u8bfb\uff09\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff1b\u672a\u4f5c\u4fee\u6539"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isWrite(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+"

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 18
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    return v0

    .line 19
    :cond_1
    const-string v1, "settings"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/system/bin/settings"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 21
    :cond_2
    const-string v1, "--user"

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 22
    :goto_0
    array-length v3, p0

    add-int/lit8 v4, v1, 0x2

    if-gt v3, v4, :cond_4

    return v0

    .line 23
    :cond_4
    const-string v3, "put"

    aget-object v5, p0, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "delete"

    aget-object v5, p0, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    add-int/2addr v1, v2

    aget-object v1, p0, v1

    .line 24
    const-string v3, "global"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "policy_control"

    aget-object p0, p0, v4

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v0, v2

    :cond_6
    return v0
.end method

.method private static label(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 64
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static lock(Landroid/view/View;)V
    .locals 2

    .line 56
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
