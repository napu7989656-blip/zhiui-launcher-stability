.class public final synthetic Lcom/google/android/material/search/Ͳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;


# instance fields
.field public final synthetic ˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/search/Ͳ;->ˋ:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/search/Ͳ;->ˋ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;->onAnimationStart()V

    return-void

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;->onAnimationEnd()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
