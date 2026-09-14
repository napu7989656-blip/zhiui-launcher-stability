.class public final synthetic Lcom/google/android/material/textfield/ˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/ˋ;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/textfield/ˋ;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/ˋ;->Ͱ:I

    iget-object v1, p0, Lcom/google/android/material/textfield/ˋ;->ͱ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->ͳ(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->Ͳ(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    return-void

    :goto_0
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v1}, Lcom/google/android/material/textfield/TextInputLayout;->ˋ(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
