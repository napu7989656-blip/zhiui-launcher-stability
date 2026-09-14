.class public final Lo/Ζ;
.super Landroidx/databinding/BaseObservable;
.source "SourceFile"


# instance fields
.field public ʹ:I

.field public Ͱ:Z

.field public ͱ:I

.field public Ͳ:I

.field public ͳ:I

.field public Ͷ:Z

.field public ͷ:Z

.field public ͺ:Z

.field public ͻ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lo/Ζ;->ͱ:I

    iput v0, p0, Lo/Ζ;->Ͳ:I

    return-void
.end method


# virtual methods
.method public final ʹ(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-boolean p1, p0, Lo/Ζ;->ͷ:Z

    .line 5
    .line 6
    if-eq p1, p2, :cond_1

    .line 7
    .line 8
    iput-boolean p2, p0, Lo/Ζ;->ͷ:Z

    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lo/Ζ;->ͺ:Z

    .line 19
    .line 20
    if-eq p1, p2, :cond_1

    .line 21
    .line 22
    iput-boolean p2, p0, Lo/Ζ;->ͺ:Z

    .line 23
    .line 24
    const/4 p1, 0x5

    .line 25
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final Ͱ(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/Ζ;->Ͱ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lo/Ζ;->Ͱ:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public final ͱ(I)V
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Lo/Ζ;->ͱ:I

    .line 14
    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    .line 17
    iput p1, p0, Lo/Ζ;->ͱ:I

    .line 18
    .line 19
    const/4 p1, 0x6

    .line 20
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x7

    .line 24
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final Ͳ(I)V
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Lo/Ζ;->Ͳ:I

    .line 14
    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    .line 17
    iput p1, p0, Lo/Ζ;->Ͳ:I

    .line 18
    .line 19
    const/16 p1, 0x8

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x9

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final ͳ(I)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lo/Ζ;->ʹ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lo/Ζ;->ʹ:I

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method
