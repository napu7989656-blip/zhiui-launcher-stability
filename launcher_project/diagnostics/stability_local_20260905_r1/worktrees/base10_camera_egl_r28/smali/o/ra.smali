.class public final synthetic Lo/ra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:I

.field public final synthetic Ͱ:Lo/oa;

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:I


# direct methods
.method public synthetic constructor <init>(Lo/oa;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ra;->Ͱ:Lo/oa;

    iput p2, p0, Lo/ra;->ͱ:I

    iput p3, p0, Lo/ra;->Ͳ:I

    iput p4, p0, Lo/ra;->ͳ:I

    iput p5, p0, Lo/ra;->ʹ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lo/ra;->Ͱ:Lo/oa;

    .line 2
    .line 3
    iget-object v0, v0, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 8
    .line 9
    iget v2, p0, Lo/ra;->ͱ:I

    .line 10
    .line 11
    iget v3, p0, Lo/ra;->Ͳ:I

    .line 12
    .line 13
    iget v4, p0, Lo/ra;->ͳ:I

    .line 14
    .line 15
    iget v5, p0, Lo/ra;->ʹ:I

    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x3

    .line 19
    const/4 v8, 0x2

    .line 20
    const/4 v9, 0x1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v9, v2}, Lo/vl;->ά(II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    if-lez v3, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 31
    .line 32
    invoke-virtual {v1, v8, v3}, Lo/vl;->ά(II)V

    .line 33
    .line 34
    .line 35
    :cond_1
    if-lez v4, :cond_2

    .line 36
    .line 37
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 38
    .line 39
    invoke-virtual {v1, v7, v4}, Lo/vl;->ά(II)V

    .line 40
    .line 41
    .line 42
    :cond_2
    if-lez v5, :cond_3

    .line 43
    .line 44
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 45
    .line 46
    invoke-virtual {v1, v6, v5}, Lo/vl;->ά(II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 50
    .line 51
    if-eqz v1, :cond_7

    .line 52
    .line 53
    iget-boolean v10, v1, Lo/nd;->Η:Z

    .line 54
    .line 55
    if-eqz v10, :cond_7

    .line 56
    .line 57
    if-lez v2, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1, v9, v2}, Lo/nd;->Ώ(II)V

    .line 60
    .line 61
    .line 62
    :cond_4
    if-lez v3, :cond_5

    .line 63
    .line 64
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 65
    .line 66
    invoke-virtual {v1, v8, v3}, Lo/nd;->Ώ(II)V

    .line 67
    .line 68
    .line 69
    :cond_5
    if-lez v4, :cond_6

    .line 70
    .line 71
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 72
    .line 73
    invoke-virtual {v1, v7, v4}, Lo/nd;->Ώ(II)V

    .line 74
    .line 75
    .line 76
    :cond_6
    if-lez v5, :cond_7

    .line 77
    .line 78
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 79
    .line 80
    invoke-virtual {v0, v6, v5}, Lo/nd;->Ώ(II)V

    .line 81
    .line 82
    .line 83
    :cond_7
    return-void
.end method
