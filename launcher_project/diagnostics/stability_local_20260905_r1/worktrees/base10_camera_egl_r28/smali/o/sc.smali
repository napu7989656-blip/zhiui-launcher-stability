.class public final synthetic Lo/sc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:I

.field public final synthetic Ͱ:Lo/nd;

.field public final synthetic ͱ:[[Ljava/lang/String;

.field public final synthetic Ͳ:[Z

.field public final synthetic ͳ:Landroid/widget/GridLayout;

.field public final synthetic Ͷ:I


# direct methods
.method public synthetic constructor <init>(Lo/nd;[[Ljava/lang/String;[ZLandroid/widget/GridLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/sc;->Ͱ:Lo/nd;

    iput-object p2, p0, Lo/sc;->ͱ:[[Ljava/lang/String;

    iput-object p3, p0, Lo/sc;->Ͳ:[Z

    iput-object p4, p0, Lo/sc;->ͳ:Landroid/widget/GridLayout;

    iput p5, p0, Lo/sc;->ʹ:I

    iput p6, p0, Lo/sc;->Ͷ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v1, p0, Lo/sc;->ͱ:[[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lo/sc;->Ͳ:[Z

    .line 4
    .line 5
    iget-object v3, p0, Lo/sc;->ͳ:Landroid/widget/GridLayout;

    .line 6
    .line 7
    iget v4, p0, Lo/sc;->ʹ:I

    .line 8
    .line 9
    iget v5, p0, Lo/sc;->Ͷ:I

    .line 10
    .line 11
    iget-object v0, p0, Lo/sc;->Ͱ:Lo/nd;

    .line 12
    .line 13
    iget-boolean v6, v0, Lo/nd;->Η:Z

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {v0 .. v5}, Lo/nd;->ͽ([[Ljava/lang/String;[ZLandroid/widget/GridLayout;II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
