.class Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 2
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 317
    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothPbap;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1500(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "btdProfileState.java"

    const-string/jumbo v1, "onServiceConnected for BluetoothPbap, mPbapService is NOT null, calling Headset.close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothPbap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbap;->close()V

    .line 322
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 323
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 327
    monitor-exit v1

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 332
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
