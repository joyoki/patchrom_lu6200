.class Lcom/android/internal/policy/impl/WidgetLayar$1$1;
.super Ljava/lang/Object;
.source "WidgetLayar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/WidgetLayar$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/WidgetLayar$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WidgetLayar$1;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/WidgetLayar$1$1;->this$1:Lcom/android/internal/policy/impl/WidgetLayar$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/WidgetLayar$1$1;->this$1:Lcom/android/internal/policy/impl/WidgetLayar$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/WidgetLayar$1;->this$0:Lcom/android/internal/policy/impl/WidgetLayar;

    #calls: Lcom/android/internal/policy/impl/WidgetLayar;->updateView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WidgetLayar;->access$100(Lcom/android/internal/policy/impl/WidgetLayar;)V

    .line 128
    return-void
.end method
