.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2134
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2139
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "hybrid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2140
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_0

    .line 2145
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2146
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/location/LocationProviderInterface;->updateBatteryStatus(Z)Z

    .line 2151
    :cond_0
    :goto_0
    return-void

    .line 2147
    :cond_1
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2148
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/location/LocationProviderInterface;->updateBatteryStatus(Z)Z

    goto :goto_0
.end method
