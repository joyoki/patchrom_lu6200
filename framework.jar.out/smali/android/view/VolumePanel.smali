.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x64

.field private static final STREAMS:[Landroid/view/VolumePanel$StreamResources; = null

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0x7d0

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0xc8


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private mIsSoundException:Z

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    sput-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    .line 198
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SYSTEMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SYSTEMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SYSTEMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->DMBStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 11
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 227
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 107
    iput-boolean v6, p0, Landroid/view/VolumePanel;->mIsSoundException:Z

    .line 124
    const/4 v5, -0x1

    iput v5, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 228
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 229
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 230
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 232
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 234
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x10900af

    invoke-virtual {v1, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 235
    .local v3, view:Landroid/view/View;
    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v7, Landroid/view/VolumePanel$1;

    invoke-direct {v7, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020337

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 243
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_RESOURCE:Z

    if-eqz v5, :cond_0

    .line 244
    iget-object v5, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    const v7, 0x2020207

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 247
    :cond_0
    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020338

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 248
    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x102033a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 249
    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020339

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 251
    new-instance v5, Landroid/view/VolumePanel$2;

    const v7, 0x10302fa

    invoke-direct {v5, p0, p1, v7}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 260
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v7, "Volume control"

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 262
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v7, Landroid/view/VolumePanel$3;

    invoke-direct {v7, p0}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 269
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 270
    .local v4, window:Landroid/view/Window;
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 271
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 272
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v10, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 274
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1050044

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 276
    const/16 v5, 0x7e4

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 277
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 278
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 280
    const v5, 0x40028

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 283
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    new-array v5, v5, [Landroid/media/ToneGenerator;

    iput-object v5, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 284
    new-instance v5, Landroid/os/Vibrator;

    invoke-direct {v5}, Landroid/os/Vibrator;-><init>()V

    iput-object v5, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1110023

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 287
    iget-boolean v5, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 289
    iget-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v5, :cond_2

    .line 290
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v5, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :goto_1
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 298
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToScreenStatus()V

    .line 301
    const-string/jumbo v5, "ro.lge.audio_soundexception"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/VolumePanel;->mIsSoundException:Z

    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v0, dismiss_filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/view/VolumePanel$4;

    invoke-direct {v6, p0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    return-void

    .end local v0           #dismiss_filter:Landroid/content/IntentFilter;
    :cond_1
    move v5, v6

    .line 287
    goto :goto_0

    .line 293
    :cond_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 411
    iget-boolean v3, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 423
    :cond_0
    return-void

    .line 413
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 415
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 416
    .local v2, streamType:I
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 413
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_3
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 420
    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 421
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 460
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 461
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 361
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 363
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 364
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 365
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 366
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 367
    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 373
    .local v6, streamType:I
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .line 374
    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    .line 375
    const v7, 0x10900b0

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 376
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 377
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x102033b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 378
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 379
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 380
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 381
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 382
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x10202e1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 384
    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 386
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v8, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 387
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 388
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 389
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 384
    .end local v2           #plusOne:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 391
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_2
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 448
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 449
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 450
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 454
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 865
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 866
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 867
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 717
    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 720
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 728
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 723
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 357
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$5;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$5;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    return-void
.end method

.method private listenToScreenStatus()V
    .locals 3

    .prologue
    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$6;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$6;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 394
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 396
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 397
    .local v0, active:Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 398
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 407
    :goto_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    .line 408
    return-void

    .line 401
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 403
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 404
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 860
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 861
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 862
    return-void
.end method

.method private setDMBIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 740
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 741
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 742
    iput p1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 743
    iput p2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 746
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 747
    :cond_0
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 754
    :cond_1
    :goto_0
    return-void

    .line 750
    :cond_2
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 758
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 759
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 760
    iput p1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 761
    iput p2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 764
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 765
    :cond_0
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 772
    :cond_1
    :goto_0
    return-void

    .line 768
    :cond_2
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setRingerIcon()V
    .locals 6

    .prologue
    const v5, 0x202028b

    const/4 v4, 0x2

    .line 775
    iget-object v2, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 776
    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    if-nez v1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    const v2, 0x1080295

    iput v2, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 781
    iput v5, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 782
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    :goto_1
    iget v2, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 795
    .local v0, muted:Z
    iget-object v3, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget v2, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    iget v2, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x108029c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 784
    .end local v0           #muted:Z
    :cond_2
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 785
    const v2, 0x202028a

    iput v2, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 786
    iput v5, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 787
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 789
    :cond_3
    const v2, 0x108029a

    iput v2, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 790
    const v2, 0x108029e

    iput v2, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 791
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 795
    .restart local v0       #muted:Z
    :cond_4
    iget v2, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_2
.end method

.method private updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .locals 4
    .parameter "sc"

    .prologue
    .line 428
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mIsSoundException:Z

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 435
    :goto_0
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 436
    .local v0, muted:Z
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x108029c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    :cond_0
    return-void

    .line 432
    .end local v0           #muted:Z
    :cond_1
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 436
    .restart local v0       #muted:Z
    :cond_2
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 466
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 467
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 468
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 469
    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 816
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 819
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 824
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 829
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 834
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 839
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 844
    :pswitch_5
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 851
    :pswitch_6
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    invoke-direct {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 937
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 938
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 940
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 941
    return-void
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 804
    monitor-enter p0

    .line 805
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 806
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 809
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 805
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 811
    :cond_1
    monitor-exit p0

    .line 812
    return-void

    .line 811
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 675
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 678
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 681
    :cond_0
    monitor-enter p0

    .line 682
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 683
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 684
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 685
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 687
    :cond_1
    monitor-exit p0

    .line 688
    return-void

    .line 687
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 871
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 872
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_3

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 873
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 875
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged() START getStreamVolume ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_0
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    sparse-switch v2, :sswitch_data_0

    .line 904
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 905
    if-nez p2, :cond_1

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-ge v2, v6, :cond_2

    :cond_1
    if-lt p2, v6, :cond_6

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_6

    .line 907
    :cond_2
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, p2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 919
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 920
    return-void

    .line 880
    .restart local v0       #sc:Landroid/view/VolumePanel$StreamControl;
    :sswitch_0
    if-nez p2, :cond_4

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-lez v2, :cond_4

    .line 881
    const-string v2, "VolumePanel"

    const-string/jumbo v3, "set progress is 1 to prevent don`t change voice call volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    add-int/lit8 p2, p2, 0x1

    .line 885
    :cond_4
    if-lez p2, :cond_3

    .line 887
    add-int/lit8 p2, p2, -0x1

    .line 888
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, p2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 892
    :sswitch_1
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 893
    if-lt p2, v6, :cond_5

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 894
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/16 v4, 0x43

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 899
    :cond_5
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, p2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 909
    :cond_6
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, p2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 876
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onShowVolumeChanged(II)V
    .locals 12
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const v11, 0x1080295

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 527
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Landroid/view/VolumePanel;->mIsSoundException:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 532
    .local v0, index:I
    :goto_0
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 534
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    .line 535
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onShowVolumeChanged(streamType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v1

    .line 543
    .local v1, max:I
    packed-switch p1, :pswitch_data_0

    .line 643
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 644
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_3

    .line 645
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 646
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 648
    :cond_2
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 651
    :cond_3
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 652
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 653
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 655
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_4

    .line 656
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    .line 658
    :cond_4
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 662
    :cond_5
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p0, Landroid/view/VolumePanel;->mIsSoundException:Z

    if-eqz v4, :cond_7

    if-ne p1, v9, :cond_7

    :cond_6
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_7

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, v8}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 669
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 671
    :cond_7
    return-void

    .line 527
    .end local v0           #index:I
    .end local v1           #max:I
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_8
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    goto/16 :goto_0

    .line 546
    .restart local v0       #index:I
    .restart local v1       #max:I
    :pswitch_1
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 548
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 549
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto :goto_1

    .line 558
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_2
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v10}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_9

    .line 562
    const v4, 0x1080296

    invoke-direct {p0, v11, v4}, Landroid/view/VolumePanel;->setDMBIcon(II)V

    goto/16 :goto_1

    .line 565
    :cond_9
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isTDMBSpeakerOn()Z

    move-result v4

    if-nez v4, :cond_a

    .line 566
    const v4, 0x202028a

    const v5, 0x202028b

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setDMBIcon(II)V

    goto/16 :goto_1

    .line 570
    :cond_a
    const v4, 0x108029d

    const v5, 0x108029e

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setDMBIcon(II)V

    goto/16 :goto_1

    .line 579
    :pswitch_3
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v10}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_b

    .line 583
    const v4, 0x1080296

    invoke-direct {p0, v11, v4}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 586
    :cond_b
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isTDMBSpeakerOn()Z

    move-result v4

    if-nez v4, :cond_c

    .line 587
    const v4, 0x202028a

    const v5, 0x202028b

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 591
    :cond_c
    const v4, 0x202028c

    const v5, 0x202028d

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 598
    :pswitch_4
    const v4, 0x108029d

    const v5, 0x108029e

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 608
    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 609
    add-int/lit8 v1, v1, 0x1

    .line 610
    goto/16 :goto_1

    .line 618
    :pswitch_6
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 620
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 621
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 632
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_7
    add-int/lit8 v0, v0, 0x1

    .line 633
    add-int/lit8 v1, v1, 0x1

    .line 634
    goto/16 :goto_1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 923
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 692
    monitor-enter p0

    .line 693
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 694
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 695
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 696
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 697
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 694
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 700
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 701
    return-void

    .line 700
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x1

    .line 927
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 930
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopTrackingTouch(getStreamVolume ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 934
    :cond_2
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 489
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mActiveStreamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 493
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq p1, v0, :cond_7

    .line 495
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 502
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 505
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 506
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 507
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 510
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 511
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 512
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 513
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 516
    :cond_5
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 517
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 520
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    .line 522
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 523
    :cond_6
    return-void

    .line 498
    :cond_7
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_2

    .line 499
    invoke-direct {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 474
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 476
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 478
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 479
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
