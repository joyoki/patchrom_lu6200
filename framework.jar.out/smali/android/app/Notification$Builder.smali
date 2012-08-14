.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioStreamType:I

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mSmallIcon:I

.field private mSmallIconLevel:I

.field private mSound:Landroid/net/Uri;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mVibrate:[J

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 687
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 692
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 693
    return-void
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1012
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const v0, 0x1090098

    :goto_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x1090099

    goto :goto_1
.end method

.method private makeRemoteViews(I)Landroid/widget/RemoteViews;
    .locals 10
    .parameter "resId"

    .prologue
    const v9, 0x102000d

    const v7, 0x1020006

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v8, 0x1020322

    .line 960
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 961
    .local v0, contentView:Landroid/widget/RemoteViews;
    const/4 v2, 0x0

    .line 962
    .local v2, hasLine3:Z
    iget v6, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    if-eqz v6, :cond_4

    .line 963
    iget v6, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 964
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 968
    :goto_0
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    .line 969
    const v6, 0x1020016

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 971
    :cond_0
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 972
    const v6, 0x1020046

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 973
    const/4 v2, 0x1

    .line 975
    :cond_1
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 976
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 977
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 978
    const/4 v2, 0x1

    .line 994
    :goto_1
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v6, :cond_8

    .line 995
    :cond_2
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    iget v7, p0, Landroid/app/Notification$Builder;->mProgress:I

    iget-boolean v8, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {v0, v9, v6, v7, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 997
    invoke-virtual {v0, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1001
    :goto_2
    iget-wide v6, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 1002
    const v6, 0x1020064

    const-string/jumbo v7, "setTime"

    iget-wide v8, p0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1004
    :cond_3
    const v6, 0x1020321

    if-eqz v2, :cond_9

    :goto_3
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1005
    return-object v0

    .line 966
    :cond_4
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 979
    :cond_5
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v6, :cond_7

    .line 980
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 982
    .local v3, tooBig:I
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v6, v3, :cond_6

    .line 983
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 989
    :goto_4
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 990
    const/4 v2, 0x1

    .line 991
    goto :goto_1

    .line 986
    :cond_6
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 987
    .local v1, f:Ljava/text/NumberFormat;
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    .line 992
    .end local v1           #f:Ljava/text/NumberFormat;
    .end local v3           #tooBig:I
    :cond_7
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 999
    :cond_8
    invoke-virtual {v0, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    :cond_9
    move v4, v5

    .line 1004
    goto :goto_3
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1027
    :goto_0
    return-object v0

    .line 1022
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 1023
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const v0, 0x109009a

    :goto_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x109009b

    goto :goto_1

    .line 1027
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 952
    if-eqz p2, :cond_0

    .line 953
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 957
    :goto_0
    return-void

    .line 955
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 1037
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1038
    .local v0, n:Landroid/app/Notification;
    iget-wide v1, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 1039
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 1040
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 1041
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 1042
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1043
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1044
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1045
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1046
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1047
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1048
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1049
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1050
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1051
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 1052
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1053
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 1054
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 1055
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1056
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1057
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_0

    .line 1058
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1060
    :cond_0
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 1061
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1063
    :cond_1
    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "autoCancel"

    .prologue
    .line 933
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 934
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "views"

    .prologue
    .line 781
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 782
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "info"

    .prologue
    .line 762
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 763
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "intent"

    .prologue
    .line 794
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 795
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "text"

    .prologue
    .line 744
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 745
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 736
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 737
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "defaults"

    .prologue
    .line 947
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 948
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "intent"

    .prologue
    .line 806
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 807
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "intent"
    .parameter "highPriority"

    .prologue
    .line 824
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 825
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 826
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "icon"

    .prologue
    .line 853
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 854
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "argb"
    .parameter "onMs"
    .parameter "offMs"

    .prologue
    .line 895
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 896
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 897
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 898
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "number"

    .prologue
    .line 754
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 755
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "ongoing"

    .prologue
    .line 913
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 914
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "onlyAlertOnce"

    .prologue
    .line 922
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 923
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 771
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 772
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 773
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 774
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "icon"

    .prologue
    .line 712
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 713
    return-object p0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "icon"
    .parameter "level"

    .prologue
    .line 727
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 728
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 729
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "sound"

    .prologue
    .line 861
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 862
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 863
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "sound"
    .parameter "streamType"

    .prologue
    .line 873
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 874
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 875
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "tickerText"

    .prologue
    .line 834
    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 835
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "tickerText"
    .parameter "views"

    .prologue
    .line 844
    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 845
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 846
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "pattern"

    .prologue
    .line 885
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 886
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "when"

    .prologue
    .line 700
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 701
    return-object p0
.end method
