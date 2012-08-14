.class Landroid/text/TextLine$SpanSet;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field

.field numberOfSpans:I

.field spanEnds:[I

.field spanFlags:[I

.field spanStarts:[I

.field spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p0, this:Landroid/text/TextLine$SpanSet;,"Landroid/text/TextLine$SpanSet<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<+TE;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput-object p1, p0, Landroid/text/TextLine$SpanSet;->classType:Ljava/lang/Class;

    .line 874
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    .line 875
    return-void
.end method


# virtual methods
.method getNextTransition(II)I
    .locals 4
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 919
    .local p0, this:Landroid/text/TextLine$SpanSet;,"Landroid/text/TextLine$SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    if-ge v0, v3, :cond_2

    .line 920
    iget-object v3, p0, Landroid/text/TextLine$SpanSet;->spanStarts:[I

    aget v2, v3, v0

    .line 921
    .local v2, spanStart:I
    iget-object v3, p0, Landroid/text/TextLine$SpanSet;->spanEnds:[I

    aget v1, v3, v0

    .line 922
    .local v1, spanEnd:I
    if-le v2, p1, :cond_0

    if-ge v2, p2, :cond_0

    move p2, v2

    .line 923
    :cond_0
    if-le v1, p1, :cond_1

    if-ge v1, p2, :cond_1

    move p2, v1

    .line 919
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    .end local v1           #spanEnd:I
    .end local v2           #spanStart:I
    :cond_2
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 910
    .local p0, this:Landroid/text/TextLine$SpanSet;,"Landroid/text/TextLine$SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_2

    .line 912
    iget-object v1, p0, Landroid/text/TextLine$SpanSet;->spanStarts:[I

    aget v1, v1, v0

    if-ge v1, p2, :cond_0

    iget-object v1, p0, Landroid/text/TextLine$SpanSet;->spanEnds:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_1

    .line 910
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 913
    :cond_1
    const/4 v1, 0x1

    .line 915
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public init(Landroid/text/Spanned;II)V
    .locals 9
    .parameter "spanned"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 879
    .local p0, this:Landroid/text/TextLine$SpanSet;,"Landroid/text/TextLine$SpanSet<TE;>;"
    iget-object v7, p0, Landroid/text/TextLine$SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 880
    .local v0, allSpans:[Ljava/lang/Object;,"[TE;"
    array-length v2, v0

    .line 882
    .local v2, length:I
    if-lez v2, :cond_1

    iget-object v7, p0, Landroid/text/TextLine$SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/text/TextLine$SpanSet;->spans:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v7, v2, :cond_1

    .line 884
    :cond_0
    iget-object v7, p0, Landroid/text/TextLine$SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    iput-object v7, p0, Landroid/text/TextLine$SpanSet;->spans:[Ljava/lang/Object;

    .line 885
    new-array v7, v2, [I

    iput-object v7, p0, Landroid/text/TextLine$SpanSet;->spanStarts:[I

    .line 886
    new-array v7, v2, [I

    iput-object v7, p0, Landroid/text/TextLine$SpanSet;->spanEnds:[I

    .line 887
    new-array v7, v2, [I

    iput-object v7, p0, Landroid/text/TextLine$SpanSet;->spanFlags:[I

    .line 890
    :cond_1
    const/4 v7, 0x0

    iput v7, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    .line 891
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 892
    aget-object v3, v0, v1

    .line 894
    .local v3, span:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 895
    .local v6, spanStart:I
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 896
    .local v4, spanEnd:I
    if-ne v6, v4, :cond_2

    .line 891
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    :cond_2
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 900
    .local v5, spanFlag:I
    iget-object v7, p0, Landroid/text/TextLine$SpanSet;->spans:[Ljava/lang/Object;

    iget v8, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    aput-object v3, v7, v8

    .line 901
    iget-object v7, p0, Landroid/text/TextLine$SpanSet;->spanStarts:[I

    iget v8, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    aput v6, v7, v8

    .line 902
    iget-object v7, p0, Landroid/text/TextLine$SpanSet;->spanEnds:[I

    iget v8, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    aput v4, v7, v8

    .line 903
    iget-object v7, p0, Landroid/text/TextLine$SpanSet;->spanFlags:[I

    iget v8, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    aput v5, v7, v8

    .line 905
    iget v7, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    goto :goto_1

    .line 907
    .end local v3           #span:Ljava/lang/Object;,"TE;"
    .end local v4           #spanEnd:I
    .end local v5           #spanFlag:I
    .end local v6           #spanStart:I
    :cond_3
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 930
    .local p0, this:Landroid/text/TextLine$SpanSet;,"Landroid/text/TextLine$SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/text/TextLine$SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_0

    .line 931
    iget-object v1, p0, Landroid/text/TextLine$SpanSet;->spans:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 933
    :cond_0
    return-void
.end method
