.class public abstract Lo/f0;
.super Lo/e0;
.source "SourceFile"


# direct methods
.method public static Σ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Lo/k3;I)Ljava/lang/String;
    .locals 5

    and-int/lit8 v0, p4, 0x2

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p4, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    and-int/lit8 v2, p4, 0x10

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v2, "..."

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    and-int/lit8 p4, p4, 0x20

    if-eqz p4, :cond_4

    move-object p3, v3

    :cond_4
    const-string p4, "<this>"

    .line 1
    invoke-static {p0, p4}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "prefix"

    invoke-static {p1, p4}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "postfix"

    invoke-static {p2, p4}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "truncated"

    invoke-static {v2, p4}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    const-string v4, ", "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_5
    if-ltz v0, :cond_6

    if-gt v1, v0, :cond_b

    :cond_6
    if-eqz p3, :cond_7

    .line 3
    invoke-virtual {p3, p1}, Lo/k3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_7
    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    instance-of v3, p1, Ljava/lang/CharSequence;

    :goto_3
    if-eqz v3, :cond_9

    :goto_4
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_9
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_a

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_b
    if-ltz v0, :cond_c

    if-le v1, v0, :cond_c

    .line 4
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_c
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 5
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "joinTo(StringBuilder(), \u2026ed, transform).toString()"

    invoke-static {p0, p1}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
