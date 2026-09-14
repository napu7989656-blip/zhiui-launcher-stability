.class public final synthetic Lo/sk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic ˋ:[I

.field public final synthetic ˏ:Ljava/util/List;

.field public final synthetic Ͱ:Landroid/content/SharedPreferences;

.field public final synthetic ͱ:Landroid/widget/TextView;

.field public final synthetic Ͳ:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([ILjava/util/ArrayList;Landroid/content/SharedPreferences;Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/sk;->ˋ:[I

    iput-object p2, p0, Lo/sk;->ˏ:Ljava/util/List;

    iput-object p3, p0, Lo/sk;->Ͱ:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lo/sk;->ͱ:Landroid/widget/TextView;

    iput-object p5, p0, Lo/sk;->Ͳ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo/sk;->ˋ:[I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    aget v0, p1, p2

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iget-object v1, p0, Lo/sk;->ˏ:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lo/sk;->Ͱ:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "autostart_package"

    .line 30
    .line 31
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lo/sk;->ͱ:Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    aget p1, p1, p2

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    const-string p1, "\u672a\u8bbe\u7f6e"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p2, p0, Lo/sk;->Ͳ:[Ljava/lang/String;

    .line 50
    .line 51
    aget-object p1, p2, p1

    .line 52
    .line 53
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const-string v0, "none"

    .line 63
    .line 64
    :cond_3
    const-string p1, "Auto-start app set to: "

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "WidgetBarMgr"

    .line 71
    .line 72
    invoke-static {p2, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
