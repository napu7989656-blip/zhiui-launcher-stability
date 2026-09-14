.class public final synthetic Lcom/google/android/material/timepicker/Ͱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/Ͱ;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/timepicker/Ͱ;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/timepicker/Ͱ;->ˋ:I

    iget-object v1, p0, Lcom/google/android/material/timepicker/Ͱ;->ˏ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->ˋ(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    return-void

    :goto_0
    check-cast v1, Lcom/google/android/material/timepicker/TimePickerView;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/material/timepicker/TimePickerView;->ˋ(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
