.class public Lcom/android/internal/telephony/IccCardApplicationStatus;
.super Ljava/lang/Object;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;,
        Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;,
        Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    }
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

.field public app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

.field public perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field public remaining_count_pin1:I

.field public remaining_count_pin2:I

.field public remaining_count_puk1:I

.field public remaining_count_puk2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .locals 4
    .parameter "state"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 152
    .local v0, newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :goto_0
    return-object v0

    .line 143
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 144
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 145
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 146
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 147
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .locals 4
    .parameter "type"

    .prologue
    .line 124
    packed-switch p1, :pswitch_data_0

    .line 132
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 135
    .local v0, newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :goto_0
    return-object v0

    .line 126
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 127
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 128
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 129
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 130
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    .locals 4
    .parameter "substate"

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PersoSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 188
    .local v0, newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :goto_0
    return-object v0

    .line 160
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 161
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 162
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 163
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 164
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 165
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 166
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 167
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 168
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 169
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 170
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 171
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 172
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 173
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 174
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 175
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 176
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 177
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 178
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 179
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_14
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 180
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 181
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 182
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 183
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 4
    .parameter "state"

    .prologue
    .line 193
    packed-switch p1, :pswitch_data_0

    .line 213
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PinState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 215
    .local v0, newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :goto_0
    return-object v0

    .line 198
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 199
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 201
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 202
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 204
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 205
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 207
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 208
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 210
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 211
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_0

    .line 224
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_2

    .line 229
    :cond_1
    const-string v1, ",pin1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, ",pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, ",remaining count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_pin1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_puk1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_pin2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_puk2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
