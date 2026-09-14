.class public final Lo/k7;
.super Lo/ͻ;
.source "SourceFile"


# instance fields
.field public final synthetic ͳ:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/k7;->ͳ:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lo/ͻ;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final ͻ()Z
    .locals 1

    .line 1
    iget v0, p0, Lo/k7;->ͳ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ͼ()Z
    .locals 1

    .line 1
    iget v0, p0, Lo/k7;->ͳ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ͽ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lo/k7;->ͳ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lo/Β;->ͽ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lo/Β;->ͽ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lo/a2;->ˏ:Lo/vh;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    sget-object v2, Lo/a2;->Ͱ:Lo/vh;

    .line 21
    .line 22
    if-ne v0, v2, :cond_5

    .line 23
    .line 24
    iget-object v2, p0, Lo/Β;->ͱ:Lo/n7;

    .line 25
    .line 26
    new-instance v3, Lo/Α;

    .line 27
    .line 28
    invoke-direct {v3, p1}, Lo/Α;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v2}, Lo/q7;->ͼ()Lo/q7;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v4, v0, Lo/rf;

    .line 36
    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    check-cast v0, Lo/rf;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v0, v3, v2}, Lo/q7;->ʹ(Lo/q7;Lo/n7;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    if-nez v0, :cond_4

    .line 50
    .line 51
    :goto_1
    move-object v0, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    instance-of v1, v0, Lo/v;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    instance-of p1, v0, Lo/v;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    :goto_2
    return-object v0

    .line 63
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "Invalid offerInternal result "

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final Ί()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final Ό()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final ΐ(Ljava/lang/Object;Lo/v;)V
    .locals 7

    .line 1
    iget v0, p0, Lo/k7;->ͳ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lo/ͻ;->ΐ(Ljava/lang/Object;Lo/v;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_5

    .line 12
    .line 13
    instance-of v1, p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v2, p0, Lo/Β;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    check-cast p1, Lo/rg;

    .line 20
    .line 21
    instance-of v1, p1, Lo/Α;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    if-eqz v2, :cond_5

    .line 26
    .line 27
    check-cast p1, Lo/Α;

    .line 28
    .line 29
    iget-object p1, p1, Lo/Α;->ͳ:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v2, p1, v0}, Lo/a2;->ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/b7;)Lo/b7;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {p1, p2}, Lo/rg;->Ώ(Lo/v;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v3, -0x1

    .line 47
    add-int/2addr v1, v3

    .line 48
    move-object v4, v0

    .line 49
    :goto_0
    if-ge v3, v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lo/rg;

    .line 56
    .line 57
    instance-of v6, v5, Lo/Α;

    .line 58
    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    check-cast v5, Lo/Α;

    .line 64
    .line 65
    iget-object v5, v5, Lo/Α;->ͳ:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static {v2, v5, v4}, Lo/a2;->ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/b7;)Lo/b7;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v4, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v5, p2}, Lo/rg;->Ώ(Lo/v;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move-object v0, v4

    .line 81
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 82
    .line 83
    return-void

    .line 84
    :cond_6
    throw v0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
