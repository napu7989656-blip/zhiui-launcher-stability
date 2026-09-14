.class public final synthetic Lo/rd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Landroidx/core/util/Predicate;

.field public final synthetic Ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/rd;->ˋ:I

    iput-object p1, p0, Lo/rd;->ˏ:Landroidx/core/util/Predicate;

    iput-object p2, p0, Lo/rd;->Ͱ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Landroidx/core/util/Predicate;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lo/rd;->ˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/rd;->Ͱ:Ljava/lang/Object;

    iput-object p2, p0, Lo/rd;->ˏ:Landroidx/core/util/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lo/rd;->ˋ:I

    iget-object v1, p0, Lo/rd;->ˏ:Landroidx/core/util/Predicate;

    iget-object v2, p0, Lo/rd;->Ͱ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/core/util/Predicate;

    invoke-static {v1, v2, p1}, Landroidx/core/util/Predicate;->ˋ(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast v2, Landroidx/core/util/Predicate;

    invoke-static {v1, v2, p1}, Landroidx/core/util/Predicate;->Ͳ(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_0
    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->Ή(Ljava/lang/Class;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
