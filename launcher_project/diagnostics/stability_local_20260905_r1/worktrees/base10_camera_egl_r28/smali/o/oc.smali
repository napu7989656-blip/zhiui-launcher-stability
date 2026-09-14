.class public final synthetic Lo/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic ˋ:Lo/nd;

.field public final synthetic ˏ:Ljava/util/List;

.field public final synthetic Ͱ:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lo/nd;Ljava/util/ArrayList;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/oc;->ˋ:Lo/nd;

    iput-object p2, p0, Lo/oc;->ˏ:Ljava/util/List;

    iput-object p3, p0, Lo/oc;->Ͱ:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/oc;->ˋ:Lo/nd;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lo/oc;->ˏ:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 13
    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p4, "/"

    .line 27
    .line 28
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 32
    .line 33
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget p3, p1, Lo/nd;->Ε:I

    .line 43
    .line 44
    if-gtz p3, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object p3, p1, Lo/nd;->ˋ:Landroid/content/Context;

    .line 48
    .line 49
    const-string p5, "pip_manager_prefs"

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p3, p5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    const-string p5, "pip_right_app"

    .line 61
    .line 62
    invoke-interface {p3, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_1

    .line 74
    .line 75
    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    aget-object p3, p3, v0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object p3, p2

    .line 83
    :goto_0
    iput-object p3, p1, Lo/nd;->Σ:Ljava/lang/String;

    .line 84
    .line 85
    iget p3, p1, Lo/nd;->Ε:I

    .line 86
    .line 87
    new-instance p4, Ljava/lang/Thread;

    .line 88
    .line 89
    new-instance p5, Lo/h2;

    .line 90
    .line 91
    const/16 v0, 0x9

    .line 92
    .line 93
    invoke-direct {p5, p1, p2, p3, v0}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p4, p5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 100
    .line 101
    .line 102
    :goto_1
    iget-object p1, p0, Lo/oc;->Ͱ:Landroid/app/AlertDialog;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 105
    .line 106
    .line 107
    return-void
.end method
