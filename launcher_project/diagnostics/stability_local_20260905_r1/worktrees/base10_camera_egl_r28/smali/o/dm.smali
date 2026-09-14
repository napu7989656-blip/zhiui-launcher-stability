.class public final Lo/dm;
.super Lo/zl;
.source "SourceFile"


# instance fields
.field public final ʹ:Landroid/widget/ImageView;

.field public final ˏ:Landroid/widget/TextView;

.field public final Ͱ:Landroid/widget/ImageView;

.field public final ͱ:Landroid/widget/ImageView;

.field public final Ͳ:Landroid/widget/ImageView;

.field public final ͳ:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/zl;-><init>(Landroid/view/View;)V

    sget v0, Lo/if;->tv_music_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/dm;->ˏ:Landroid/widget/TextView;

    sget v0, Lo/if;->btn_music_fav:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    sget v0, Lo/if;->btn_music_prev:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/dm;->ͱ:Landroid/widget/ImageView;

    sget v0, Lo/if;->btn_music_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/dm;->Ͳ:Landroid/widget/ImageView;

    sget v0, Lo/if;->btn_music_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/dm;->ͳ:Landroid/widget/ImageView;

    sget v0, Lo/if;->iv_album_art:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/dm;->ʹ:Landroid/widget/ImageView;

    return-void
.end method
