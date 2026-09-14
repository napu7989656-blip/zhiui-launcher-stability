.class public final Lo/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/adb/AdbBase64;
.implements Lo/j1;


# static fields
.field public static final synthetic Ͱ:Lo/z;

.field public static final synthetic ͱ:Lo/z;

.field public static final synthetic Ͳ:Lo/z;

.field public static final ͳ:Lo/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lo/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo/z;->Ͱ:Lo/z;

    .line 7
    .line 8
    new-instance v0, Lo/z;

    .line 9
    .line 10
    invoke-direct {v0}, Lo/z;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lo/z;->ͱ:Lo/z;

    .line 14
    .line 15
    new-instance v0, Lo/z;

    .line 16
    .line 17
    invoke-direct {v0}, Lo/z;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lo/z;->Ͳ:Lo/z;

    .line 21
    .line 22
    new-instance v0, Lo/z;

    .line 23
    .line 24
    invoke-direct {v0}, Lo/z;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lo/z;->ͳ:Lo/z;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public encodeToString([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
