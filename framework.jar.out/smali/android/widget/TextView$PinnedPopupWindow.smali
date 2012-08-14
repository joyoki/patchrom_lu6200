.class abstract Landroid/widget/TextView$PinnedPopupWindow;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PinnedPopupWindow"
.end annotation


# instance fields
.field protected isStartHandle:Z

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 9832
    iput-object p1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9886
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->isStartHandle:Z

    .line 9833
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->createPopupWindow()V

    .line 9837
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9839
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9840
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9842
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->initContentView()V

    .line 9844
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9846
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9848
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 9849
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 9874
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->measureContent()V

    .line 9875
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 9876
    .local v2, width:I
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    .line 9877
    .local v1, offset:I
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    .line 9878
    iget v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v4}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    .line 9880
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 9881
    .local v0, line:I
    invoke-virtual {p0, v0}, Landroid/widget/TextView$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    move-result v3

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    .line 9882
    iget v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v4}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    .line 9883
    return-void
.end method

.method private updatePosition(II)V
    .locals 9
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 9889
    iget v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 9890
    .local v1, positionX:I
    iget v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .line 9894
    .local v2, positionY:I
    instance-of v4, p0, Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v4, :cond_1

    .line 9895
    invoke-virtual {p0, p2}, Landroid/widget/TextView$PinnedPopupWindow;->clipVertically(I)I

    move-result v2

    .line 9902
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9903
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 9904
    .local v3, width:I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9905
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9907
    iget-boolean v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->isStartHandle:Z

    if-nez v4, :cond_0

    instance-of v4, p0, Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v4, :cond_0

    .line 9908
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    int-to-float v5, v3

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    .line 9909
    iget v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v5}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    .line 9910
    iget v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 9913
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9916
    instance-of v4, p0, Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v4, :cond_2

    .line 9917
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1, v2, v3, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9926
    :goto_1
    return-void

    .line 9897
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v3           #width:I
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView$PinnedPopupWindow;->clipVertically(I)I

    move-result v2

    goto :goto_0

    .line 9919
    .restart local v0       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v3       #width:I
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1, v2, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 9923
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v8, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract clipVertically(I)I
.end method

.method protected abstract createPopupWindow()V
.end method

.method protected abstract getTextOffset()I
.end method

.method protected abstract getVerticalLocalPosition(I)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 9929
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9930
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 9931
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 9959
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 9861
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9862
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 9867
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 9852
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v1}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 9854
    invoke-direct {p0}, Landroid/widget/TextView$PinnedPopupWindow;->computeLocalPosition()V

    .line 9856
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v1}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    .line 9857
    .local v0, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/TextView$PinnedPopupWindow;->updatePosition(II)V

    .line 9858
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 9940
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9942
    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView$PinnedPopupWindow;->computeLocalPosition()V

    .line 9943
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView$PinnedPopupWindow;->updatePosition(II)V

    .line 9956
    :cond_2
    :goto_0
    return-void

    .line 9949
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9950
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9951
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    goto :goto_0
.end method
