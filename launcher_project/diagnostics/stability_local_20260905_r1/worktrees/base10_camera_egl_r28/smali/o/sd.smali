.class public final synthetic Lo/sd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/sd;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/sd;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lo/sd;->ˋ:I

    iget-object v1, p0, Lo/sd;->ˏ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, p1}, Landroidx/core/util/Predicate;->ͱ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_0
    check-cast v1, Landroidx/core/util/Predicate;

    invoke-static {v1, p1}, Landroidx/core/util/Predicate;->ˏ(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
