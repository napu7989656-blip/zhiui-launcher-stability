.class public final synthetic Lo/nk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:Lo/vl;

.field public final synthetic ˏ:Landroid/content/SharedPreferences;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lo/vl;Landroid/content/SharedPreferences;ILandroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nk;->ˋ:Lo/vl;

    iput-object p2, p0, Lo/nk;->ˏ:Landroid/content/SharedPreferences;

    iput p3, p0, Lo/nk;->Ͱ:I

    iput-object p4, p0, Lo/nk;->ͱ:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lo/nk;->ˋ:Lo/vl;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo/nk;->ˏ:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    invoke-static {v0}, Lo/vl;->Α(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Lo/nk;->Ͱ:I

    .line 17
    .line 18
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lo/vl;->Ξ(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lo/nk;->ͱ:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lo/vl;->Ι(Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
