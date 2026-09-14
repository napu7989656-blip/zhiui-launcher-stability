.class public final synthetic Lo/v8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/a9;

.field public final synthetic Ͳ:Ljava/lang/String;

.field public final synthetic ͳ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lo/a9;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lo/v8;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/v8;->ͱ:Lo/a9;

    .line 4
    .line 5
    iput-object p2, p0, Lo/v8;->Ͳ:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lo/v8;->ͳ:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v3, p0, Lo/v8;->ͳ:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lo/v8;->Ͳ:Ljava/lang/String;

    .line 4
    .line 5
    iget v0, p0, Lo/v8;->Ͱ:I

    .line 6
    .line 7
    iget-object v1, p0, Lo/v8;->ͱ:Lo/a9;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    invoke-virtual {v1}, Lo/a9;->ͳ()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lo/a9;->ͻ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iput-object v4, v1, Lo/a9;->ͽ:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    iget-object v6, v1, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v7, Lo/w8;

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    move-object v0, v7

    .line 31
    invoke-direct/range {v0 .. v5}, Lo/w8;-><init>(Lo/a9;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :pswitch_1
    iget-object v0, v1, Lo/a9;->ʹ:Lo/ia;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v1, v1, Lo/a9;->ͽ:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lo/ia;->ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_2
    iget-object v0, v1, Lo/a9;->ʹ:Lo/ia;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v1, v1, Lo/a9;->ͽ:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lo/ia;->ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void

    .line 58
    :goto_0
    iget-object v0, v1, Lo/a9;->ʹ:Lo/ia;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v1, v1, Lo/a9;->ͽ:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lo/ia;->ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
