.class public final Lo/rl;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lo/vl;


# direct methods
.method public constructor <init>(Lo/vl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/rl;->ˋ:Lo/vl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/rl;->ˋ:Lo/vl;

    .line 2
    .line 3
    iget-object p2, p1, Lo/vl;->ΐ:Landroid/view/View;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget v0, Lo/if;->iv_car_model_preview:I

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-static {p2}, Lo/oj;->ͽ(Landroid/widget/ImageView;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p1, Lo/vl;->Ͷ:Lo/km;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
