.class public final Lcom/byd/launcher/stability/InitProcess$Result;
.super Ljava/lang/Object;
.source "InitProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/InitProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final completed:Z

.field public final exitCode:I

.field public final output:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/byd/launcher/stability/InitProcess$Result;->completed:Z

    iput p2, p0, Lcom/byd/launcher/stability/InitProcess$Result;->exitCode:I

    iput-object p3, p0, Lcom/byd/launcher/stability/InitProcess$Result;->output:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZILjava/lang/String;Lcom/byd/launcher/stability/InitProcess$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/byd/launcher/stability/InitProcess$Result;-><init>(ZILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public successful()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/byd/launcher/stability/InitProcess$Result;->completed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/byd/launcher/stability/InitProcess$Result;->exitCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
