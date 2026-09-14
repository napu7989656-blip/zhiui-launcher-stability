.class public final synthetic Lo/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/c6;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/c6;->ˏ:Ljava/lang/String;

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
    iget v0, p0, Lo/c6;->ˋ:I

    iget-object v1, p0, Lo/c6;->ˏ:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    invoke-static {v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->ͻ(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->ͽ(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Landroid/net/Uri;

    invoke-static {v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->Ά(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Landroid/net/Uri;

    invoke-static {v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->ʹ(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :goto_0
    check-cast p1, Landroid/net/Uri;

    invoke-static {v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->Ͱ(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
