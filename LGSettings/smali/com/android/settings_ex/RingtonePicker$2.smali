.class Lcom/android/settings_ex/RingtonePicker$2;
.super Ljava/lang/Object;
.source "RingtonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RingtonePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingtonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePicker$2;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$2;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v0}, Lcom/android/settings_ex/RingtonePicker;->finish()V

    .line 400
    return-void
.end method