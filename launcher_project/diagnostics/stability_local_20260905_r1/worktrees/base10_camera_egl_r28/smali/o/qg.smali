.class public final synthetic Lo/qg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/qg;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/qg;->ͱ:Lcom/google/android/material/search/SearchView;

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
    iget v0, p0, Lo/qg;->Ͱ:I

    iget-object v1, p0, Lo/qg;->ͱ:Lcom/google/android/material/search/SearchView;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/google/android/material/search/SearchView;->Ͷ(Lcom/google/android/material/search/SearchView;)V

    return-void

    :pswitch_1
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->show()V

    return-void

    :pswitch_2
    invoke-static {v1}, Lcom/google/android/material/search/SearchView;->ͱ(Lcom/google/android/material/search/SearchView;)V

    return-void

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
