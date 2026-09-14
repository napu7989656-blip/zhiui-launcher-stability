.class public final synthetic Lo/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic ˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/b6;->ˋ:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lo/b6;->ˋ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->ͱ(Landroid/content/ComponentName;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Landroid/content/ClipData;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->Ί(Landroid/content/ClipData;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->ˏ(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->Έ(Landroid/content/ComponentName;)Z

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->Ͷ(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->ͺ(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->ˋ(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->ͷ(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->Ͳ(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_9
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->ͼ(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_a
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->ͳ(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_0
    invoke-static {p1}, Landroidx/core/util/Predicate;->Ͱ(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
