.class Lcom/android/internal/telephony/cdma/EriManager$EriCrcCalculator;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EriCrcCalculator"
.end annotation


# static fields
.field static final CRC16_TABLE:[C = null

.field static final CRC_16_SEED:C = '\uffff'

.field static final CRC_16_STEP_SEED:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/16 v0, 0x100

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/EriManager$EriCrcCalculator;->CRC16_TABLE:[C

    return-void

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x21t 0x10t
        0x42t 0x20t
        0x63t 0x30t
        0x84t 0x40t
        0xa5t 0x50t
        0xc6t 0x60t
        0xe7t 0x70t
        0x8t 0x81t
        0x29t 0x91t
        0x4at 0xa1t
        0x6bt 0xb1t
        0x8ct 0xc1t
        0xadt 0xd1t
        0xcet 0xe1t
        0xeft 0xf1t
        0x31t 0x12t
        0x10t 0x2t
        0x73t 0x32t
        0x52t 0x22t
        0xb5t 0x52t
        0x94t 0x42t
        0xf7t 0x72t
        0xd6t 0x62t
        0x39t 0x93t
        0x18t 0x83t
        0x7bt 0xb3t
        0x5at 0xa3t
        0xbdt 0xd3t
        0x9ct 0xc3t
        0xfft 0xf3t
        0xdet 0xe3t
        0x62t 0x24t
        0x43t 0x34t
        0x20t 0x4t
        0x1t 0x14t
        0xe6t 0x64t
        0xc7t 0x74t
        0xa4t 0x44t
        0x85t 0x54t
        0x6at 0xa5t
        0x4bt 0xb5t
        0x28t 0x85t
        0x9t 0x95t
        0xeet 0xe5t
        0xcft 0xf5t
        0xact 0xc5t
        0x8dt 0xd5t
        0x53t 0x36t
        0x72t 0x26t
        0x11t 0x16t
        0x30t 0x6t
        0xd7t 0x76t
        0xf6t 0x66t
        0x95t 0x56t
        0xb4t 0x46t
        0x5bt 0xb7t
        0x7at 0xa7t
        0x19t 0x97t
        0x38t 0x87t
        0xdft 0xf7t
        0xfet 0xe7t
        0x9dt 0xd7t
        0xbct 0xc7t
        0xc4t 0x48t
        0xe5t 0x58t
        0x86t 0x68t
        0xa7t 0x78t
        0x40t 0x8t
        0x61t 0x18t
        0x2t 0x28t
        0x23t 0x38t
        0xcct 0xc9t
        0xedt 0xd9t
        0x8et 0xe9t
        0xaft 0xf9t
        0x48t 0x89t
        0x69t 0x99t
        0xat 0xa9t
        0x2bt 0xb9t
        0xf5t 0x5at
        0xd4t 0x4at
        0xb7t 0x7at
        0x96t 0x6at
        0x71t 0x1at
        0x50t 0xat
        0x33t 0x3at
        0x12t 0x2at
        0xfdt 0xdbt
        0xdct 0xcbt
        0xbft 0xfbt
        0x9et 0xebt
        0x79t 0x9bt
        0x58t 0x8bt
        0x3bt 0xbbt
        0x1at 0xabt
        0xa6t 0x6ct
        0x87t 0x7ct
        0xe4t 0x4ct
        0xc5t 0x5ct
        0x22t 0x2ct
        0x3t 0x3ct
        0x60t 0xct
        0x41t 0x1ct
        0xaet 0xedt
        0x8ft 0xfdt
        0xect 0xcdt
        0xcdt 0xddt
        0x2at 0xadt
        0xbt 0xbdt
        0x68t 0x8dt
        0x49t 0x9dt
        0x97t 0x7et
        0xb6t 0x6et
        0xd5t 0x5et
        0xf4t 0x4et
        0x13t 0x3et
        0x32t 0x2et
        0x51t 0x1et
        0x70t 0xet
        0x9ft 0xfft
        0xbet 0xeft
        0xddt 0xdft
        0xfct 0xcft
        0x1bt 0xbft
        0x3at 0xaft
        0x59t 0x9ft
        0x78t 0x8ft
        0x88t 0x91t
        0xa9t 0x81t
        0xcat 0xb1t
        0xebt 0xa1t
        0xct 0xd1t
        0x2dt 0xc1t
        0x4et 0xf1t
        0x6ft 0xe1t
        0x80t 0x10t
        0xa1t 0x0t
        0xc2t 0x30t
        0xe3t 0x20t
        0x4t 0x50t
        0x25t 0x40t
        0x46t 0x70t
        0x67t 0x60t
        0xb9t 0x83t
        0x98t 0x93t
        0xfbt 0xa3t
        0xdat 0xb3t
        0x3dt 0xc3t
        0x1ct 0xd3t
        0x7ft 0xe3t
        0x5et 0xf3t
        0xb1t 0x2t
        0x90t 0x12t
        0xf3t 0x22t
        0xd2t 0x32t
        0x35t 0x42t
        0x14t 0x52t
        0x77t 0x62t
        0x56t 0x72t
        0xeat 0xb5t
        0xcbt 0xa5t
        0xa8t 0x95t
        0x89t 0x85t
        0x6et 0xf5t
        0x4ft 0xe5t
        0x2ct 0xd5t
        0xdt 0xc5t
        0xe2t 0x34t
        0xc3t 0x24t
        0xa0t 0x14t
        0x81t 0x4t
        0x66t 0x74t
        0x47t 0x64t
        0x24t 0x54t
        0x5t 0x44t
        0xdbt 0xa7t
        0xfat 0xb7t
        0x99t 0x87t
        0xb8t 0x97t
        0x5ft 0xe7t
        0x7et 0xf7t
        0x1dt 0xc7t
        0x3ct 0xd7t
        0xd3t 0x26t
        0xf2t 0x36t
        0x91t 0x6t
        0xb0t 0x16t
        0x57t 0x66t
        0x76t 0x76t
        0x15t 0x46t
        0x34t 0x56t
        0x4ct 0xd9t
        0x6dt 0xc9t
        0xet 0xf9t
        0x2ft 0xe9t
        0xc8t 0x99t
        0xe9t 0x89t
        0x8at 0xb9t
        0xabt 0xa9t
        0x44t 0x58t
        0x65t 0x48t
        0x6t 0x78t
        0x27t 0x68t
        0xc0t 0x18t
        0xe1t 0x8t
        0x82t 0x38t
        0xa3t 0x28t
        0x7dt 0xcbt
        0x5ct 0xdbt
        0x3ft 0xebt
        0x1et 0xfbt
        0xf9t 0x8bt
        0xd8t 0x9bt
        0xbbt 0xabt
        0x9at 0xbbt
        0x75t 0x4at
        0x54t 0x5at
        0x37t 0x6at
        0x16t 0x7at
        0xf1t 0xat
        0xd0t 0x1at
        0xb3t 0x2at
        0x92t 0x3at
        0x2et 0xfdt
        0xft 0xedt
        0x6ct 0xddt
        0x4dt 0xcdt
        0xaat 0xbdt
        0x8bt 0xadt
        0xe8t 0x9dt
        0xc9t 0x8dt
        0x26t 0x7ct
        0x7t 0x6ct
        0x64t 0x5ct
        0x45t 0x4ct
        0xa2t 0x3ct
        0x83t 0x2ct
        0xe0t 0x1ct
        0xc1t 0xct
        0x1ft 0xeft
        0x3et 0xfft
        0x5dt 0xcft
        0x7ct 0xdft
        0x9bt 0xaft
        0xbat 0xbft
        0xd9t 0x8ft
        0xf8t 0x9ft
        0x17t 0x6et
        0x36t 0x7et
        0x55t 0x4et
        0x74t 0x5et
        0x93t 0x2et
        0xb2t 0x3et
        0xd1t 0xet
        0xf0t 0x1et
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crc_16_step(C[BC)C
    .locals 5
    .parameter "seed"
    .parameter "buf_ptr"
    .parameter "byte_len"

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, buf_index:I
    xor-int/lit8 v2, p0, -0x1

    int-to-char v1, v2

    .local v1, crc_16:C
    :goto_0
    if-lez p2, :cond_0

    .line 204
    sget-object v2, Lcom/android/internal/telephony/cdma/EriManager$EriCrcCalculator;->CRC16_TABLE:[C

    ushr-int/lit8 v3, v1, 0x8

    int-to-char v3, v3

    aget-byte v4, p1, v0

    int-to-char v4, v4

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aget-char v2, v2, v3

    shl-int/lit8 v3, v1, 0x8

    int-to-char v3, v3

    xor-int/2addr v2, v3

    int-to-char v1, v2

    .line 203
    add-int/lit8 v2, p2, -0x1

    int-to-char p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    xor-int/lit8 v2, v1, -0x1

    int-to-char v2, v2

    return v2
.end method
