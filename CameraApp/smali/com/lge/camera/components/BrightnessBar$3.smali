.class Lcom/lge/camera/components/BrightnessBar$3;
.super Ljava/util/TimerTask;
.source "BrightnessBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/BrightnessBar;->updateBrightnessWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BrightnessBar;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$step:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lge/camera/components/BrightnessBar$3;->this$0:Lcom/lge/camera/components/BrightnessBar;

    iput-object p2, p0, Lcom/lge/camera/components/BrightnessBar$3;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/lge/camera/components/BrightnessBar$3;->val$step:I

    iput-object p4, p0, Lcom/lge/camera/components/BrightnessBar$3;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$3;->this$0:Lcom/lge/camera/components/BrightnessBar;

    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar$3;->val$v:Landroid/view/View;

    iget v2, p0, Lcom/lge/camera/components/BrightnessBar$3;->val$step:I

    iget-object v3, p0, Lcom/lge/camera/components/BrightnessBar$3;->val$event:Landroid/view/MotionEvent;

    const/4 v4, 0x1

    #calls: Lcom/lge/camera/components/BrightnessBar;->updateBrightnessWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/components/BrightnessBar;->access$300(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;ILandroid/view/MotionEvent;Z)V

    .line 200
    return-void
.end method
