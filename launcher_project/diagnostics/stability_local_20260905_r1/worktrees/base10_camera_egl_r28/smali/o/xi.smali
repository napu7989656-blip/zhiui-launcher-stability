.class public final synthetic Lo/xi;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lo/wi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lo/xi;->ˋ:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/xi;->ˋ:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
