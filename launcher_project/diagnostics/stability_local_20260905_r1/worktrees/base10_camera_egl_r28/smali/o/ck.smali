.class public final synthetic Lo/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic ˋ:Landroid/content/SharedPreferences;

.field public final synthetic ˏ:Lo/u;

.field public final synthetic Ͱ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lo/u;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ck;->ˋ:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lo/ck;->ˏ:Lo/u;

    iput-object p3, p0, Lo/ck;->Ͱ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/ck;->ˋ:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "click_sound_enabled"

    .line 8
    .line 9
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lo/ck;->ˏ:Lo/u;

    .line 17
    .line 18
    iput-boolean p2, p1, Lo/u;->ͱ:Z

    .line 19
    .line 20
    iget-object p1, p0, Lo/ck;->Ͱ:Landroid/view/View;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 p2, 0x8

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
