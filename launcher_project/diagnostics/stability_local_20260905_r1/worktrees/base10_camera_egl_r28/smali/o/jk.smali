.class public final synthetic Lo/jk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:Lo/vl;

.field public final synthetic ˏ:Z

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ul;

.field public final synthetic Ͳ:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lo/vl;ZILo/ul;[Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/jk;->ˋ:Lo/vl;

    iput-boolean p2, p0, Lo/jk;->ˏ:Z

    iput p3, p0, Lo/jk;->Ͱ:I

    iput-object p4, p0, Lo/jk;->ͱ:Lo/ul;

    iput-object p5, p0, Lo/jk;->Ͳ:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lo/jk;->ˋ:Lo/vl;

    .line 2
    .line 3
    iget-boolean v0, p0, Lo/jk;->ˏ:Z

    .line 4
    .line 5
    iget v1, p0, Lo/jk;->Ͱ:I

    .line 6
    .line 7
    iget-object v2, p0, Lo/jk;->ͱ:Lo/ul;

    .line 8
    .line 9
    iget-object v3, p0, Lo/jk;->Ͳ:[Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    iget-object v0, p1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v4, v2, Lo/ul;->ˋ:Ljava/lang/String;

    .line 21
    .line 22
    const-string v5, "widget_bar_prefs"

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const-string v1, "vehicle_slot_0"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "vehicle_slot_1"

    .line 39
    .line 40
    :goto_0
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lo/vl;->Ͷ:Lo/km;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :try_start_0
    aget-object v0, v3, v6

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object p1, p1, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 59
    .line 60
    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :cond_3
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 64
    .line 65
    if-eqz p1, :cond_8

    .line 66
    .line 67
    iget-object v0, v2, Lo/ul;->ˋ:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_8

    .line 70
    .line 71
    iget-object v1, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const-string v1, "lock"

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 85
    .line 86
    iget-boolean p1, p1, Lcom/byd/launcher/NavBarService;->Ώ:Z

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    const-string v1, "trunk"

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 98
    .line 99
    iget-boolean p1, p1, Lcom/byd/launcher/NavBarService;->ΐ:Z

    .line 100
    .line 101
    :goto_1
    invoke-virtual {v0, v1, p1}, Lo/vl;->ί(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    iget-object v1, p1, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/Boolean;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    const/4 v6, 0x1

    .line 124
    :cond_7
    invoke-virtual {p1, v0, v6}, Lo/vl;->ί(Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_2
    return-void
.end method
