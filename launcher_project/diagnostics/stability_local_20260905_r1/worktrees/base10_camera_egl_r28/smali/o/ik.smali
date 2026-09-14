.class public final synthetic Lo/ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/ik;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/ik;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lo/ik;->ˋ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lo/ik;->ˏ:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lo/qi;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-boolean p2, p1, Lo/qi;->ʹ:Z

    .line 14
    .line 15
    iget-object v0, p1, Lo/qi;->ͱ:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "turn_signal_camera_enabled"

    .line 22
    .line 23
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    iget-boolean p2, p1, Lo/qi;->Ͷ:Z

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lo/qi;->Ͱ()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lo/qi;->ˋ()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :goto_0
    iget-object v0, p0, Lo/ik;->ˏ:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 46
    .line 47
    invoke-static {v0, p1, p2}, Lcom/google/android/material/chip/Chip;->ˋ(Lcom/google/android/material/chip/Chip;Landroid/widget/CompoundButton;Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
