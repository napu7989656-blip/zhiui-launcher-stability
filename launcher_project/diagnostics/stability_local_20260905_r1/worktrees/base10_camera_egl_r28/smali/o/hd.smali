.class public final Lo/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/t2;
.implements Lo/u2;


# instance fields
.field public final synthetic ˋ:Lo/nd;


# direct methods
.method public synthetic constructor <init>(Lo/nd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/hd;->ˋ:Lo/nd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final ˋ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lo/hd;->ˋ:Lo/nd;

    iget-object v0, v0, Lo/nd;->ͱ:Landroid/os/Handler;

    new-instance v7, Lo/sj;

    const/4 v6, 0x5

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lo/sj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
