.class public final synthetic Lcom/google/android/material/textfield/Ͱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lcom/google/android/material/textfield/EndIconDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/EndIconDelegate;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/textfield/Ͱ;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/Ͱ;->ˏ:Lcom/google/android/material/textfield/EndIconDelegate;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/Ͱ;->ˋ:I

    iget-object v1, p0, Lcom/google/android/material/textfield/Ͱ;->ˏ:Lcom/google/android/material/textfield/EndIconDelegate;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->ͱ(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v1, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->ˏ(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Landroid/view/View;)V

    return-void

    :goto_0
    check-cast v1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-static {v1, p1}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->ˋ(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
