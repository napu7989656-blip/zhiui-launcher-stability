.class public final synthetic Lo/ϐ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic ˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/ϐ;->ˋ:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lo/ϐ;->ˋ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lo/Ϫ;

    .line 8
    .line 9
    check-cast p2, Lo/Ϫ;

    .line 10
    .line 11
    sget-object v0, Lo/vl;->Χ:[Lo/ul;

    .line 12
    .line 13
    iget-object p1, p1, Lo/Ϫ;->ˏ:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p2, p2, Lo/Ϫ;->ˏ:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :pswitch_1
    check-cast p1, Ljava/io/File;

    .line 23
    .line 24
    check-cast p2, Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :pswitch_2
    check-cast p1, Lo/sb;

    .line 40
    .line 41
    check-cast p2, Lo/sb;

    .line 42
    .line 43
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 44
    .line 45
    iget-object p1, p1, Lo/sb;->ˏ:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p2, p2, Lo/sb;->ˏ:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :pswitch_3
    check-cast p1, Lo/Ϡ;

    .line 55
    .line 56
    check-cast p2, Lo/Ϡ;

    .line 57
    .line 58
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 59
    .line 60
    iget-object p1, p1, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 61
    .line 62
    iget-object p2, p2, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :goto_0
    check-cast p1, Ljava/lang/Double;

    .line 70
    .line 71
    check-cast p2, Ljava/lang/Double;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    return p1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
