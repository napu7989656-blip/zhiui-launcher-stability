.class public final synthetic Lo/w8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Ljava/lang/String;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/a9;

.field public final synthetic Ͳ:Landroid/graphics/Bitmap;

.field public final synthetic ͳ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Lo/a9;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lo/w8;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/w8;->ͱ:Lo/a9;

    iput-object p1, p0, Lo/w8;->Ͳ:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lo/w8;->ͳ:Ljava/lang/String;

    iput-object p4, p0, Lo/w8;->ʹ:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lo/a9;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 2
    iput p5, p0, Lo/w8;->Ͱ:I

    iput-object p1, p0, Lo/w8;->ͱ:Lo/a9;

    iput-object p2, p0, Lo/w8;->ͳ:Ljava/lang/String;

    iput-object p3, p0, Lo/w8;->ʹ:Ljava/lang/String;

    iput-object p4, p0, Lo/w8;->Ͳ:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v3, p0, Lo/w8;->ʹ:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lo/w8;->ͳ:Ljava/lang/String;

    .line 4
    .line 5
    iget v0, p0, Lo/w8;->Ͱ:I

    .line 6
    .line 7
    iget-object v1, p0, Lo/w8;->Ͳ:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object v4, p0, Lo/w8;->ͱ:Lo/a9;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    iget-object v0, v4, Lo/a9;->ʹ:Lo/ia;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lo/ia;->ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_1
    iget-object v0, v4, Lo/a9;->ʹ:Lo/ia;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lo/ia;->ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :pswitch_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lo/a9;->ͻ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, v4, Lo/a9;->ͽ:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    iget-object v6, v4, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v7, Lo/w8;

    .line 43
    .line 44
    const/4 v8, 0x3

    .line 45
    move-object v0, v7

    .line 46
    move-object v1, v4

    .line 47
    move-object v4, v5

    .line 48
    move v5, v8

    .line 49
    invoke-direct/range {v0 .. v5}, Lo/w8;-><init>(Lo/a9;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_3
    iget-object v0, v4, Lo/a9;->ʹ:Lo/ia;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2, v3}, Lo/ia;->ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    :goto_0
    iget-object v0, v4, Lo/a9;->ʹ:Lo/ia;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lo/ia;->ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
