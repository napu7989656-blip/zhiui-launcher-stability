.class public Lcom/byd/launcher/CoreService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

.field public static ˋ:J

.field public static volatile ˏ:Z

.field public static Ͱ:Lcom/byd/launcher/CoreContext;

.field public static ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

.field public static Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;

.field public static ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

.field public static Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

.field public static ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

.field public static ͺ:Lcom/byd/launcher/manager/BYDChargingDeviceManager;

.field public static ͻ:Lcom/byd/launcher/manager/BYDEngineDeviceManager;

.field public static ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

.field public static ͽ:Lcom/byd/launcher/manager/BYDSensorDeviceManager;

.field public static Ά:Lcom/byd/launcher/manager/BYDPM2p5DeviceManager;

.field public static Έ:Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

.field public static Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

.field public static Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

.field public static Ό:Landroid/hardware/display/VirtualDisplay;

.field public static Ύ:Ljava/lang/Object;

.field public static Ώ:Ljava/lang/reflect/Method;

.field public static ΐ:Ljava/lang/reflect/Method;

.field public static Α:Ljava/net/ServerSocket;

.field public static Β:Ljava/net/ServerSocket;

.field public static final Γ:Ljava/util/concurrent/ConcurrentHashMap;

.field public static Δ:Lo/e1;

.field public static Ε:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final Ζ:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final Η:Ljava/util/concurrent/ConcurrentHashMap;

.field public static volatile Θ:Ljava/util/LinkedHashMap;

.field public static Ι:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/byd/launcher/CoreService;->Ζ:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/byd/launcher/CoreService;->Η:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/byd/launcher/CoreService;->Ι:J

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    new-instance v1, Lo/c1;

    invoke-direct {v1, v0, p0}, Lo/c1;-><init>([I[Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͷ()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public static ʹ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 96

    move-object/from16 v1, p1

    const-string v2, "error"

    const-string v3, "; "

    const-string v4, "CoreService"

    const-string v5, "setBacklightMode(1) failed: "

    const-string v6, "setBacklightMode(0) failed: "

    const-string v7, "Set IME policy "

    const-string v8, "copyWallpaperToApp: "

    const-string v9, "openTrunk M3 DeviceManager.setInt(1001,6,1): return="

    const-string v10, "bydScreenOff: method="

    const-string v11, "closeTrunk M3 DeviceManager.setInt(1001,6,0): return="

    const-string v12, "cp failed, exit="

    const-string v13, "bydScreenOn: method="

    const-string v14, "TurnBacklightOn failed: "

    const-string v15, "TurnBacklightOff failed: "

    move-object/from16 v16, v9

    const-string v9, "\u8bbe\u7f6e\u9664\u971c\u5931\u8d25, resultCode="

    move-object/from16 v17, v9

    const-string v9, "keyevent WAKEUP failed: "

    move-object/from16 v18, v11

    const-string v11, "error: "

    move-object/from16 v19, v10

    const-string v10, "goToSleep failed: "

    move-object/from16 v20, v10

    const-string v10, "PiP VirtualDisplay created: id="

    move-object/from16 v21, v6

    const-string v6, "setDoubleFlashLight("

    move-object/from16 v22, v6

    const-string v6, "setDriveMode: setRoadSurfaceMode("

    move-object/from16 v23, v15

    const-string v15, "turnOffBacklight M1: setBacklightBrightness(0) ret="

    move-object/from16 v24, v15

    const-string v15, "setSOCTarget: requested="

    move-object/from16 v25, v15

    const-string v15, "\u8bbe\u7f6e\u5faa\u73af\u6a21\u5f0f\u5931\u8d25, resultCode="

    move-object/from16 v26, v15

    const-string v15, "Failed to set IME policy: "

    move-object/from16 v27, v13

    const-string v13, "copyWallpaperToApp error: "

    move-object/from16 v28, v9

    const-string v9, "setDriveMode: setOperationMode("

    move-object/from16 v29, v5

    const-string v5, "getEnvironmentInfo pm25 error: "

    move-object/from16 v30, v14

    const-string v14, "openTrunk M3 DeviceManager.setInt failed: "

    move-object/from16 v31, v14

    const-string v14, "PiP VirtualDisplay released: id="

    move-object/from16 v32, v5

    const-string v5, "setDayTimeLightState("

    move-object/from16 v33, v5

    const-string v5, "openTrunk M2 bodywork.openTrunk(): return="

    move-object/from16 v34, v5

    const-string v5, "openTrunk M2 bodywork.openTrunk failed: "

    move-object/from16 v35, v5

    const-string v5, "IPowerManager init failed: "

    move-object/from16 v36, v5

    const-string v5, "turnOffBacklight: success via "

    move-object/from16 v37, v5

    const-string v5, "openTrunk: final result="

    move-object/from16 v38, v5

    const-string v5, "closeTrunk M2 bodywork.closeTrunk(): return="

    move-object/from16 v39, v5

    const-string v5, "closeTrunk M2 bodywork.closeTrunk failed: "

    move-object/from16 v40, v5

    const-string v5, "IPowerManager init failed: "

    move-object/from16 v41, v5

    const-string v5, "closeTrunk M1 voiceCtlBackDoor(3): return="

    move-object/from16 v42, v5

    const-string v5, "closeTrunk M1 voiceCtlBackDoor failed: "

    move-object/from16 v43, v5

    const-string v5, "closeTrunk M3 DeviceManager.setInt failed: "

    move-object/from16 v44, v5

    const-string v5, "openTrunk M1 voiceCtlBackDoor(1): return="

    move-object/from16 v45, v5

    const-string v5, "openTrunk M1 voiceCtlBackDoor failed: "

    move-object/from16 v46, v5

    const-string v5, "getTripInfo energyType error: "

    move-object/from16 v47, v5

    const-string v5, "turnOffBacklight M5 failed: "

    move-object/from16 v48, v5

    const-string v5, "turnOffBacklight M2: setBacklightModeState(0,0) ret="

    move-object/from16 v49, v5

    const-string v5, "turnOffBacklight M2 failed: "

    move-object/from16 v50, v5

    const-string v5, "turnOffBacklight M4 failed: "

    move-object/from16 v51, v5

    const-string v5, "closeTrunk: final result="

    move-object/from16 v52, v5

    const-string v5, "\u83b7\u53d6\u90e8\u5206\u7a7a\u8c03\u72b6\u6001\u5931\u8d25: "

    move-object/from16 v53, v5

    const-string v5, "turnOffBacklight M1: current brightness="

    move-object/from16 v54, v5

    const-string v5, "turnOffBacklight M1 failed: "

    move-object/from16 v55, v5

    const-string v5, "turnOffBacklight M3 failed: "

    move-object/from16 v56, v5

    const-string v5, "getTripInfo instrument error: "

    move-object/from16 v57, v5

    const-string v5, "getVehicleStatusBar doorLock error: "

    move-object/from16 v58, v5

    const-string v5, "Unknown command: "

    move-object/from16 v59, v5

    const-string v5, "getRotationState error: "

    move-object/from16 v60, v3

    const-string v3, "restoreRotation error: "

    move-object/from16 v61, v6

    const-string v6, "forceLandscape error: "

    move-object/from16 v62, v9

    const-string v9, "getEnvironmentInfo error: "

    move-object/from16 v63, v9

    const-string v9, "getTripInfo statistic error: "

    move-object/from16 v64, v9

    const-string v9, "getVehicleStatusBar dvr error: "

    move-object/from16 v65, v9

    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v66, v6

    move-object/from16 v6, p0

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "command"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v67, v3

    const-string v3, "requestId"

    move-object/from16 v68, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "heartbeat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1, v3}, Lcom/byd/launcher/CoreService;->Ͷ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    move-object/from16 v69, v11

    const-string v11, "response"

    invoke-virtual {v5, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "command"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    const-string v1, "requestId"

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "success"

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_40

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string v3, "copyWallpaperToApp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5b

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "setSOCTarget"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2d

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "setAcCycleMode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "setOverspeedLock"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x35

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "getLightAutoStatus"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "openTrunk"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "getWindowOpenPercent"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "getInsideLightStatus"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x48

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "getIALBrightness"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4b

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "setRearViewMirrorFlip"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3d

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "getLockOff"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x34

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "sendMusicState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x30

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "getInsideLightDoorState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x47

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "closeSentinelMode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5e

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "bydScreenOn"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4e

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "getWindowState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "getEngineSimulatorVoiceSource"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x51

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "getEnvironmentInfo"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x55

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "setAcDefrostState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "getLightStatus"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "getDoubleFlashLightState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x28

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "hasFeature"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x37

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "bydScreenOff"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4d

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "getTyrePressure"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "setEngineSimulatorVoiceSource"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x52

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "getEnergyFeedback"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2a

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "getHDCState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3c

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "setHDCState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3b

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "setPM25Power"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x31

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "turnOffBacklight"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "getDayTimeLightState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x27

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "listWallpapers"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5a

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "getSunroofPosition"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "setEPedalMode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x39

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "setDisplayImePolicy"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x62

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "sendMusicName"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2f

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "openSentinelMode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5d

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "setAcTemperature"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "getAutoVIN"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "setSocSaveSwitch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x43

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "getSOCTarget"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2c

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "setDoubleFlashLight"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "setPadRotation"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2e

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "setBacklightBrightness"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4a

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "setSeatVentilating"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "setDriveMode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x56

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "getAutoModelName"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "setDayTimeLightState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x26

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "setAllWindowState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "setEnergyFeedback"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2b

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "getSOCConfig"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3f

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "createVirtualDisplay"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5f

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "getAcState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "getEPedalMode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3a

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "getSunroofWindowblindPosition"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "getMoonRoofConfig"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "openInstrumentNavigation"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5c

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "getSeatHeating"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "setIALBrightness"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4c

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "setMoonRoofState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_3c
    const-string v3, "setAcTemperatureControlMode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_3d
    const-string v3, "getDoorLockStatus"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_3e
    const-string v3, "setEngineVoiceSimulatorState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x50

    goto/16 :goto_1

    :sswitch_3f
    const-string v3, "setMoonRoofAndSunshadeStop"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_40
    const-string v3, "getOverspeedLock"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x36

    goto/16 :goto_1

    :sswitch_41
    const-string v3, "getSeatVentilating"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_42
    const-string v3, "getTripInfo"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x54

    goto/16 :goto_1

    :sswitch_43
    const-string v3, "getVehicleStatusBar"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x53

    goto/16 :goto_1

    :sswitch_44
    const-string v3, "getPM25Power"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x32

    goto/16 :goto_1

    :sswitch_45
    const-string v3, "getRotationState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x59

    goto/16 :goto_1

    :sswitch_46
    const-string v3, "stopAc"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_47
    const-string v3, "turnOffInsideLight"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x45

    goto/16 :goto_1

    :sswitch_48
    const-string v3, "setInsideLightDoorState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x44

    goto/16 :goto_1

    :sswitch_49
    const-string v3, "getINSTheme"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x40

    goto/16 :goto_1

    :sswitch_4a
    const-string v3, "setLockOff"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x33

    goto/16 :goto_1

    :sswitch_4b
    const-string v3, "setINSTheme"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x41

    goto/16 :goto_1

    :sswitch_4c
    const-string v3, "getBacklightBrightness"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x49

    goto/16 :goto_1

    :sswitch_4d
    const-string v3, "getAllTyrePressure"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_4e
    const-string v3, "setDoorLock"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_4f
    const-string v3, "getRearViewMirrorFlip"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3e

    goto/16 :goto_1

    :sswitch_50
    const-string v3, "setAcWindLevel"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_51
    const-string v3, "setBodyWindowCtrlState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_52
    const-string v3, "getAllDoorLockStatus"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_53
    const-string v3, "releaseVirtualDisplay"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x60

    goto/16 :goto_1

    :sswitch_54
    const-string v3, "getDoorState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_55
    const-string v3, "injectTouch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x63

    goto/16 :goto_1

    :sswitch_56
    const-string v3, "getVirtualDisplayId"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x61

    goto/16 :goto_1

    :sswitch_57
    const-string v3, "setSunshadeState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_58
    const-string v3, "turnOnInsideLight"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x46

    goto/16 :goto_1

    :sswitch_59
    const-string v3, "restoreRotation"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x58

    goto/16 :goto_1

    :sswitch_5a
    const-string v3, "forceLandscape"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x57

    goto/16 :goto_1

    :sswitch_5b
    const-string v3, "getTrunkState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_5c
    const-string v3, "getEngineVoiceSimulatorState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4f

    goto :goto_1

    :sswitch_5d
    const-string v3, "voiceCtlBackDoor"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x38

    goto :goto_1

    :sswitch_5e
    const-string v11, "startAc"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :sswitch_5f
    const-string v3, "getSunroofState"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1b

    goto :goto_1

    :sswitch_60
    const-string v3, "getAllDoorStates"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x11

    goto :goto_1

    :sswitch_61
    const-string v3, "setSeatHeating"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_62
    const-string v3, "closeTrunk"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x14

    goto :goto_1

    :sswitch_63
    const-string v3, "getSocSaveSwitch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/16 v3, 0x42

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v2

    goto/16 :goto_a6

    :cond_2
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-class v11, Landroid/os/IBinder;

    move-object/from16 p0, v6

    const-string v6, "asInterface"

    const-class v70, Ljava/lang/String;

    move-object/from16 v71, v5

    const-string v5, "getService"

    move-object/from16 v72, v13

    const-string v13, "power"

    const-string v73, "android.os.ServiceManager"

    move-object/from16 v74, v13

    const-string v13, "window"

    const-class v75, Landroid/content/Context;

    move-object/from16 v76, v8

    const-string v8, ""

    move-object/from16 v77, v12

    const-string v12, "mode"

    move-object/from16 v78, v12

    const-string v12, "displayId"

    move-object/from16 v79, v8

    const-string v8, "LightDeviceManager not available"

    move-object/from16 v80, v8

    const-string v8, "seat"

    move-object/from16 v81, v8

    const-string v8, "level"

    move-object/from16 v82, v8

    const-string v8, "ok"

    move-object/from16 v83, v8

    const-string v8, "area"

    move-object/from16 v84, v8

    const-string v8, "none"

    move-object/from16 v85, v8

    const-string v8, "BodyworkDeviceManager not available"

    move-object/from16 v86, v8

    const-string v8, "state"

    move-object/from16 v87, v8

    const-string v8, "SettingDeviceManager not available"

    move-object/from16 v88, v8

    const-string v8, "result"

    move-object/from16 v89, v8

    const-string v8, "value"

    move-object/from16 v90, v8

    const-string v8, "params"

    packed-switch v3, :pswitch_data_0

    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v71

    goto/16 :goto_a4

    :pswitch_0
    :try_start_2
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "action"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v8, "downTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-string v8, "pointers"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v9, v3, [Landroid/view/MotionEvent$PointerProperties;

    new-array v10, v3, [Landroid/view/MotionEvent$PointerCoords;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v17, 0x0

    move-object/from16 v91, v2

    move/from16 v2, v17

    :goto_2
    if-ge v2, v3, :cond_3

    move-object/from16 v92, v4

    :try_start_3
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v17, v8

    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v8, v9, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v93, v1

    :try_start_4
    const-string v1, "id"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Landroid/view/MotionEvent$PointerProperties;->id:I

    aget-object v1, v9, v2

    const/4 v8, 0x1

    iput v8, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, v10, v2

    const-string v8, "x"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v95, v5

    move-object/from16 v94, v6

    :try_start_5
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v1, v10, v2

    const-string v5, "y"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v1, v10, v2

    const-string v5, "p"

    move v8, v7

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v1, v10, v2

    const v4, 0x3c23d70a    # 0.01f

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    add-int/lit8 v2, v2, 0x1

    move v7, v8

    move-object/from16 v8, v17

    move-object/from16 v4, v92

    move-object/from16 v1, v93

    move-object/from16 v6, v94

    move-object/from16 v5, v95

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_3
    move-object v1, v0

    goto/16 :goto_5

    :cond_3
    move-object/from16 v93, v1

    move-object/from16 v92, v4

    move-object/from16 v95, v5

    move-object/from16 v94, v6

    move v8, v7

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1002

    const/16 v27, 0x0

    move/from16 v17, v3

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-static/range {v12 .. v27}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object/from16 v93, v1

    move-object/from16 v91, v2

    move-object/from16 v92, v4

    move-object/from16 v95, v5

    move-object/from16 v94, v6

    move v8, v7

    const-string v1, "x"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    const-string v2, "y"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const/16 v19, 0x0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDisplayId"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/byd/launcher/CoreService;->Ύ:Ljava/lang/Object;

    if-nez v2, :cond_5

    invoke-static/range {v73 .. v73}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v70, v4, v5

    move-object/from16 v10, v95

    invoke-virtual {v2, v10, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "input"

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android.hardware.input.IInputManager$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    move-object/from16 v5, v94

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/byd/launcher/CoreService;->Ύ:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "injectInputEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/InputEvent;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/byd/launcher/CoreService;->Ώ:Ljava/lang/reflect/Method;

    :cond_5
    sget-object v2, Lcom/byd/launcher/CoreService;->Ώ:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/byd/launcher/CoreService;->Ύ:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const-string v1, "injected"

    move-object/from16 v2, v93

    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v6, v91

    move-object/from16 v3, v92

    goto/16 :goto_a2

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v5, p0

    move-object/from16 v4, v71

    move-object/from16 v6, v91

    move-object/from16 v3, v92

    goto/16 :goto_a6

    :catchall_4
    move-exception v0

    move-object/from16 v91, v2

    move-object/from16 v92, v4

    goto/16 :goto_3

    :goto_5
    move-object/from16 v6, v91

    move-object/from16 v3, v92

    goto/16 :goto_a1

    :pswitch_1
    move-object/from16 v91, v2

    move-object/from16 v92, v4

    move-object v10, v5

    move-object v5, v6

    move-object v2, v1

    :try_start_6
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "policy"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    :try_start_7
    invoke-static/range {v73 .. v73}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v70, v9, v6

    invoke-virtual {v4, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v13, v8, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "android.view.IWindowManager$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    invoke-virtual {v6, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayImePolicy"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v12, 0x1

    aput-object v10, v9, v12

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "success"

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on display "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v3, v92

    :try_start_8
    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v6, v91

    goto/16 :goto_a2

    :catchall_5
    move-exception v0

    :goto_6
    move-object v1, v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v3, v92

    goto :goto_6

    :goto_7
    move-object/from16 v6, v91

    goto/16 :goto_a1

    :catch_1
    move-exception v0

    move-object/from16 v3, v92

    :goto_8
    move-object v1, v0

    :try_start_9
    const-string v4, "success"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v6, v91

    :try_start_a
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    :catchall_7
    move-exception v0

    move-object/from16 v6, v91

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object/from16 v6, v91

    move-object/from16 v3, v92

    :goto_a
    move-object v1, v0

    goto/16 :goto_a1

    :pswitch_2
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ό:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto/16 :goto_96

    :cond_6
    const/4 v1, -0x1

    goto/16 :goto_96

    :pswitch_3
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ό:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    sget-object v4, Lcom/byd/launcher/CoreService;->Ό:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v4, 0x0

    sput-object v4, Lcom/byd/launcher/CoreService;->Ό:Landroid/hardware/display/VirtualDisplay;

    const-string v4, "released"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v2, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_64

    :cond_7
    const-string v1, "released"

    const/4 v4, 0x0

    goto/16 :goto_4c

    :pswitch_4
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "width"

    const/16 v5, 0x2d0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "height"

    const/16 v7, 0x500

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "dpi"

    const/16 v8, 0xa0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_c

    :cond_8
    const/16 v4, 0x2d0

    const/16 v5, 0x500

    const/16 v1, 0xa0

    :goto_c
    move/from16 v17, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ό:Landroid/hardware/display/VirtualDisplay;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :catch_2
    const/4 v1, 0x0

    :try_start_c
    sput-object v1, Lcom/byd/launcher/CoreService;->Ό:Landroid/hardware/display/VirtualDisplay;

    :cond_9
    sget-object v1, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    const-string v7, "display"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/hardware/display/DisplayManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-lt v1, v7, :cond_a

    const/16 v1, 0x1d0b

    goto :goto_d

    :cond_a
    const/16 v1, 0x10b

    :goto_d
    move/from16 v19, v1

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v18

    const-string v14, "BYD-PiP"

    move v15, v4

    move/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    sput-object v1, Lcom/byd/launcher/CoreService;->Ό:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v2, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_64

    :cond_b
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "createVirtualDisplay returned null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    const-string v1, "accepted"

    move-object/from16 v4, v89

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lo/lII;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lo/lII;-><init>(I)V

    const-string v5, "SentinelClose-Thread"

    invoke-direct {v1, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_6
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v89

    move-object v2, v1

    const-string v1, "accepted"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lo/lII;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Lo/lII;-><init>(I)V

    const-string v5, "SentinelOpen-Thread"

    invoke-direct {v1, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_7
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v89

    move-object v2, v1

    const-string v1, "accepted"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lo/lII;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lo/lII;-><init>(I)V

    const-string v5, "InstrumentNav-Thread"

    invoke-direct {v1, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_a2

    :pswitch_8
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v89

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_f

    :cond_c
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_d

    const-string v5, "src"

    move-object/from16 v7, v79

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    :cond_d
    move-object/from16 v7, v79

    move-object v5, v7

    :goto_10
    if-eqz v1, :cond_e

    const-string v8, "destDir"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_e
    move-object v8, v7

    :goto_11
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-nez v1, :cond_d2

    :try_start_d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "cp"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    move-result v7

    if-nez v7, :cond_10

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    move-object/from16 v10, v83

    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "destPath"

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v77

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_12
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v76

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exit="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto/16 :goto_a2

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v72

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v69

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_54

    :pswitch_9
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_12

    const-string v4, "dir"

    const-string v5, "/sdcard/launcher/wallpapers"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_12
    const-string v1, "/sdcard/launcher/wallpapers"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :goto_14
    :try_start_f
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v7, v4

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v7, :cond_14

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_14
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "ls"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_15
    :goto_16
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_16

    :cond_16
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    :cond_17
    const-string v4, "files"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listWallpapers: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " files in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto/16 :goto_a2

    :catchall_a
    move-exception v0

    move-object v1, v0

    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listWallpapers error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    goto/16 :goto_9

    :catchall_b
    move-exception v0

    goto/16 :goto_a

    :pswitch_a
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    :try_start_11
    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getRotationState()I

    move-result v1

    move-object/from16 v5, v87

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "landscapeLocked"

    const/4 v5, 0x1

    if-eq v1, v5, :cond_18

    const/4 v1, 0x1

    goto :goto_17

    :cond_18
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :cond_19
    const-string v1, "landscapeLocked"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    goto/16 :goto_a2

    :catchall_c
    move-exception v0

    move-object v1, v0

    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v68

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :goto_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto/16 :goto_60

    :pswitch_b
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v83

    move-object/from16 v4, v89

    move-object v2, v1

    :try_start_13
    invoke-static {}, Lo/a2;->Ώ()V

    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "landscapeLocked"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto/16 :goto_a2

    :catchall_d
    move-exception v0

    move-object v1, v0

    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v67

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_1a

    :pswitch_c
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v83

    move-object/from16 v4, v89

    move-object v2, v1

    :try_start_15
    invoke-static {}, Lo/a2;->ͺ()V

    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "landscapeLocked"

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto/16 :goto_a2

    :catchall_e
    move-exception v0

    move-object v1, v0

    :try_start_16
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v66

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :goto_1a
    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    move-object v1, v6

    goto/16 :goto_54

    :pswitch_d
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v83

    move-object/from16 v4, v89

    move-object v2, v1

    :try_start_17
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    sget-object v5, Lcom/byd/launcher/CoreService;->Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

    if-eqz v5, :cond_1e

    if-eqz v1, :cond_1e

    const-string v5, "operationMode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "operationMode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v7, Lcom/byd/launcher/CoreService;->Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

    invoke-virtual {v7, v5}, Lcom/byd/launcher/manager/BYDEnergyDeviceManager;->setOperationMode(I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v62

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") returned "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_1b
    const/4 v5, -0x1

    const/4 v7, -0x1

    :goto_1c
    const-string v8, "roadSurfaceMode"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const-string v8, "roadSurfaceMode"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v8, Lcom/byd/launcher/CoreService;->Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

    invoke-virtual {v8, v1}, Lcom/byd/launcher/manager/BYDEnergyDeviceManager;->setRoadSurfaceMode(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v61

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") called"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    const/4 v8, 0x0

    goto :goto_1d

    :cond_1c
    const/4 v1, -0x1

    const/4 v8, -0x1

    :goto_1d
    const-wide/16 v11, 0x1f4

    :try_start_18
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :catch_3
    :try_start_19
    sget-object v9, Lcom/byd/launcher/CoreService;->Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

    invoke-virtual {v9}, Lcom/byd/launcher/manager/BYDEnergyDeviceManager;->getOperationMode()I

    move-result v9

    sget-object v11, Lcom/byd/launcher/CoreService;->Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

    invoke-virtual {v11}, Lcom/byd/launcher/manager/BYDEnergyDeviceManager;->getRoadSurfaceMode()I

    move-result v11

    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "requestedMode"

    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "requestedRoad"

    invoke-virtual {v2, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "setResult"

    invoke-virtual {v2, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "setRoadResult"

    invoke-virtual {v2, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "operationMode"

    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "roadSurfaceMode"

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "modeName"

    invoke-static {v9}, Lcom/byd/launcher/CoreService;->Έ(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/byd/launcher/CoreService;->ͺ()V

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    sget-object v12, Lcom/byd/launcher/CoreService;->Θ:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1e

    :cond_1d
    const-string v12, "availableModes"

    invoke-virtual {v2, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDriveMode: reqOp="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reqRoad="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " setResult="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " setRoadResult="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " actualOp="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " actualRoad="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/byd/launcher/CoreService;->Έ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " map="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/byd/launcher/CoreService;->Θ:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    :cond_1e
    const-string v1, "unavailable"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    goto/16 :goto_a2

    :catchall_f
    move-exception v0

    move-object v1, v0

    :try_start_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDriveMode error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    move-object v8, v6

    goto/16 :goto_a0

    :pswitch_e
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getEnvironmentInfo DIAG: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1a

    const/16 v4, 0x64

    const/16 v5, 0x3e8

    const/16 v7, -0x32

    :try_start_1c
    sget-object v10, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    const-string v11, "auto"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    if-eqz v10, :cond_27

    :try_start_1d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getInt"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v13, 0x413

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const v13, 0x2230002c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v12, v15

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "1a(1043,0x2230002C)="

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    move-object/from16 v13, v60

    :try_start_1e
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    if-le v12, v7, :cond_1f

    if-ge v12, v4, :cond_1f

    if-eqz v12, :cond_1f

    int-to-double v7, v12

    goto :goto_1f

    :cond_1f
    const-wide/high16 v7, -0x3e20000000000000L    # -2.147483648E9

    :goto_1f
    const/4 v9, 0x2

    :try_start_1f
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v9, v17

    const v12, 0x3d800030

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v9, v17

    invoke-virtual {v11, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v12, "1b(1000,0x3D800030)="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v15, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v12, v7, v15

    if-nez v12, :cond_20

    const/16 v4, -0x32

    if-le v9, v4, :cond_20

    const/16 v12, 0xbe

    if-ge v9, v12, :cond_20

    int-to-double v7, v9

    :cond_20
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v9, v17

    const v12, 0x4eb06010

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v9, v17

    invoke-virtual {v11, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v12, "1c(1000,0x4EB06010)="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v15, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v12, v7, v15

    if-nez v12, :cond_21

    const/16 v4, -0x32

    if-le v9, v4, :cond_21

    const/16 v12, 0xbe

    if-ge v9, v12, :cond_21

    int-to-double v7, v9

    :cond_21
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v9, v12

    const v5, 0x3d6c2830

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x1

    aput-object v5, v9, v12

    invoke-virtual {v11, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v9, "1d(1000,0x3D6C2830)="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    const-wide/high16 v11, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v7, v11

    if-nez v9, :cond_22

    const/16 v4, -0x32

    if-le v5, v4, :cond_22

    const/16 v9, 0x64

    if-ge v5, v9, :cond_22

    int-to-double v7, v5

    :cond_22
    :try_start_20
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v9, "getFloat"

    filled-new-array {v14, v14}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    const/4 v9, 0x1

    :try_start_21
    invoke-virtual {v5, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    goto :goto_20

    :catchall_10
    move-exception v0

    move-object v5, v0

    goto/16 :goto_24

    :catch_4
    const/4 v5, 0x0

    :catch_5
    :goto_20
    if-eqz v5, :cond_23

    const/4 v9, 0x2

    :try_start_22
    new-array v9, v9, [Ljava/lang/Object;

    const/16 v11, 0x3f6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    const v11, 0x4a505038    # 3413006.0f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v9, v12

    invoke-virtual {v5, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v9, v5, Ljava/lang/Number;

    if-eqz v9, :cond_24

    :goto_21
    check-cast v5, Ljava/lang/Number;

    goto :goto_22

    :cond_23
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v9, "getDouble"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v12, v11, v14

    const/4 v14, 0x1

    aput-object v12, v11, v14

    invoke-virtual {v5, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v11, 0x3f6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    const v11, 0x4a505038    # 3413006.0f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v9, v12

    invoke-virtual {v5, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v9, v5, Ljava/lang/Number;

    if-eqz v9, :cond_24

    goto :goto_21

    :goto_22
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    goto :goto_23

    :cond_24
    const-wide/16 v11, 0x1

    :goto_23
    const-string v5, "1e(1014,0x4A505038)="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    const-wide/high16 v14, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v5, v7, v14

    if-nez v5, :cond_25

    const-wide/high16 v17, -0x3fbc000000000000L    # -40.0

    cmpl-double v5, v11, v17

    if-lez v5, :cond_25

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    cmpg-double v5, v11, v17

    if-gez v5, :cond_25

    const-wide/16 v17, 0x0

    cmpl-double v5, v11, v17

    if-eqz v5, :cond_25

    move-wide v7, v11

    goto :goto_25

    :goto_24
    :try_start_23
    const-string v9, "1e=ERR("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "); "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    :cond_25
    :goto_25
    const-wide/high16 v11, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v5, v7, v11

    if-nez v5, :cond_28

    :try_start_24
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v9, "getIntArray"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v12, v11, v14

    const-class v12, [I

    const/4 v14, 0x1

    aput-object v12, v11, v14

    invoke-virtual {v5, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const v9, 0x2230002c

    const v11, 0x3d956038

    const v12, 0x4f600028

    const v14, 0x4f60002a

    filled-new-array {v12, v14, v9, v11}, [I

    move-result-object v9

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-eqz v5, :cond_28

    const-string v9, "1f(batch)="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v5

    const/4 v11, 0x2

    if-le v9, v11, :cond_26

    aget v9, v5, v11

    const/16 v4, -0x32

    if-le v9, v4, :cond_26

    const/16 v11, 0x64

    if-ge v9, v11, :cond_26

    int-to-double v7, v9

    :cond_26
    array-length v9, v5

    if-lez v9, :cond_28

    const/4 v9, 0x0

    aget v5, v5, v9
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    const/16 v9, -0x28

    if-le v5, v9, :cond_28

    const/16 v9, 0x50

    if-ge v5, v9, :cond_28

    int-to-double v11, v5

    goto :goto_28

    :catchall_11
    move-exception v0

    move-object v5, v0

    :try_start_25
    const-string v9, "1f=ERR("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "); "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    goto :goto_27

    :catchall_12
    move-exception v0

    move-object v5, v0

    goto :goto_2a

    :catchall_13
    move-exception v0

    move-object/from16 v13, v60

    :goto_26
    move-object v5, v0

    goto :goto_29

    :cond_27
    move-object/from16 v13, v60

    :try_start_26
    const-string v5, "autoSvc=null; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    const-wide/high16 v7, -0x3e20000000000000L    # -2.147483648E9

    :cond_28
    :goto_27
    const-wide/high16 v11, -0x3e20000000000000L    # -2.147483648E9

    :goto_28
    const-wide/high16 v14, -0x3e20000000000000L    # -2.147483648E9

    goto :goto_2b

    :catchall_14
    move-exception v0

    goto :goto_26

    :catchall_15
    move-exception v0

    move-object/from16 v13, v60

    move-object v5, v0

    const/4 v10, 0x0

    :goto_29
    const-wide/high16 v7, -0x3e20000000000000L    # -2.147483648E9

    :goto_2a
    :try_start_27
    const-string v9, "autoSvc_ERR="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1a

    goto :goto_27

    :goto_2b
    cmpl-double v5, v7, v14

    if-nez v5, :cond_2c

    :try_start_28
    sget-object v5, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    invoke-static {v5}, Landroid/hardware/bydauto/BYDAutoDeviceManager;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/BYDAutoDeviceManager;

    move-result-object v5

    if-eqz v5, :cond_2b

    const/16 v9, 0x413

    const v14, 0x2230002c

    invoke-virtual {v5, v9, v14}, Landroid/hardware/bydauto/BYDAutoDeviceManager;->getInt(II)I

    move-result v9

    const-string v14, "2a(1043)="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, -0x32

    if-le v9, v4, :cond_29

    const/16 v14, 0x64

    if-ge v9, v14, :cond_29

    int-to-double v7, v9

    :cond_29
    const-wide/high16 v14, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v7, v14

    if-nez v9, :cond_2a

    const v9, 0x3d800030

    const/16 v14, 0x3e8

    invoke-virtual {v5, v14, v9}, Landroid/hardware/bydauto/BYDAutoDeviceManager;->getInt(II)I

    move-result v9

    const-string v14, "2b(0x3D800030)="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, -0x32

    if-le v9, v4, :cond_2a

    const/16 v14, 0xbe

    if-ge v9, v14, :cond_2a

    int-to-double v7, v9

    :cond_2a
    const-wide/high16 v14, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v7, v14

    if-nez v9, :cond_2c

    const v9, 0x3d6c2830

    const/16 v14, 0x3e8

    invoke-virtual {v5, v14, v9}, Landroid/hardware/bydauto/BYDAutoDeviceManager;->getInt(II)I

    move-result v5

    const-string v9, "2c(0x3D6C2830)="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, -0x32

    if-le v5, v4, :cond_2c

    const/16 v4, 0x64

    if-ge v5, v4, :cond_2c

    int-to-double v7, v5

    goto :goto_2c

    :cond_2b
    const-string v4, "devMgr=null; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    goto :goto_2c

    :catchall_16
    move-exception v0

    move-object v4, v0

    :try_start_29
    const-string v5, "devMgr_ERR="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    :goto_2c
    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v7, v4

    if-nez v9, :cond_2e

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getInCarTemperature()D

    move-result-wide v4

    const-string v9, "3(HVAC)="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v17, -0x3fbc000000000000L    # -40.0

    cmpl-double v9, v4, v17

    if-lez v9, :cond_2e

    const-wide v17, 0x405f400000000000L    # 125.0

    cmpg-double v9, v4, v17

    if-gez v9, :cond_2e

    const-wide/high16 v14, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v4, v14

    if-eqz v9, :cond_2e

    move-wide v7, v4

    goto :goto_2d

    :cond_2d
    const-string v4, "3(HVAC)=null; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    :goto_2d
    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v7, v4

    if-nez v9, :cond_30

    sget-object v4, Lcom/byd/launcher/CoreService;->ͽ:Lcom/byd/launcher/manager/BYDSensorDeviceManager;

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->getInCarTemperature()D

    move-result-wide v4

    const-string v9, "4(sensor)="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v13, -0x3fbc000000000000L    # -40.0

    cmpl-double v9, v4, v13

    if-lez v9, :cond_30

    const-wide v13, 0x405f400000000000L    # 125.0

    cmpg-double v9, v4, v13

    if-gez v9, :cond_30

    const-wide/high16 v13, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v4, v13

    if-eqz v9, :cond_30

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v9, v4, v13

    if-eqz v9, :cond_30

    move-wide v7, v4

    goto :goto_2e

    :cond_2f
    const-string v4, "4(sensor)=null; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    :goto_2e
    const-string v4, "FINAL="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1a

    :try_start_2a
    const-class v1, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v75, v9, v13

    invoke-virtual {v1, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v9, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    aput-object v9, v5, v13

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_31

    const-string v5, "getOutCarTemperature"

    new-array v9, v13, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    const/16 v4, -0x28

    if-le v1, v4, :cond_31

    const/16 v4, 0x50

    if-ge v1, v4, :cond_31

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_31

    int-to-double v11, v1

    :catchall_17
    :cond_31
    :try_start_2b
    const-string v1, "indoorTemp"

    invoke-virtual {v2, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v1, v11, v4

    if-eqz v1, :cond_32

    const-string v1, "outdoorTemp"

    invoke-virtual {v2, v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1a

    :cond_32
    if-eqz v10, :cond_33

    :try_start_2c
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getFloat"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const v5, 0x11f00028

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v4, -0x3a060000    # -8000.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_33

    const/high16 v4, 0x45fa0000    # 8000.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_33

    const v4, 0x45fa0800    # 8001.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_33

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_33

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_33

    const-string v4, "altitude"

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    goto :goto_2f

    :catchall_18
    move-exception v0

    move-object v1, v0

    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_33
    :goto_2f
    const-string v1, "altitude"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1a

    if-nez v1, :cond_35

    :try_start_2e
    const-string v1, "android.hardware.bydauto.location.BYDAutoLocationDevice"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v75, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v7, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    aput-object v7, v5, v8

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_35

    const-string v5, "getLocationLongitudeLatitudeValue"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-eqz v1, :cond_35

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    array-length v4, v1

    const/4 v5, 0x7

    if-lt v4, v5, :cond_35

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    const/4 v7, 0x2

    aget-wide v7, v1, v7

    const/4 v9, 0x6

    aget-wide v9, v1, v9

    const-wide v11, -0x3f99800000000000L    # -180.0

    cmpl-double v1, v4, v11

    if-lez v1, :cond_34

    const-wide v11, 0x4066800000000000L    # 180.0

    cmpg-double v1, v4, v11

    if-gez v1, :cond_34

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v1, v7, v4

    if-lez v1, :cond_34

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v1, v7, v4

    if-gez v1, :cond_34

    const/4 v1, 0x1

    goto :goto_30

    :cond_34
    const/4 v1, 0x0

    :goto_30
    if-eqz v1, :cond_35

    const-wide v4, -0x3f40c00000000000L    # -8000.0

    cmpl-double v1, v9, v4

    if-lez v1, :cond_35

    const-wide v4, 0x40bf400000000000L    # 8000.0

    cmpg-double v1, v9, v4

    if-gez v1, :cond_35

    const-wide v4, 0x40bf410000000000L    # 8001.0

    cmpl-double v1, v9, v4

    if-eqz v1, :cond_35

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v1, v9, v4

    if-eqz v1, :cond_35

    const-string v1, "altitude"

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_19

    goto :goto_31

    :catchall_19
    move-exception v0

    move-object v1, v0

    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1a

    goto :goto_31

    :catchall_1a
    move-exception v0

    move-object v1, v0

    :try_start_30
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v63

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_b

    :cond_35
    :goto_31
    :try_start_31
    sget-object v1, Lcom/byd/launcher/CoreService;->Ά:Lcom/byd/launcher/manager/BYDPM2p5DeviceManager;

    if-eqz v1, :cond_d2

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDPM2p5DeviceManager;->getPM2p5Value()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    if-eqz v1, :cond_36

    array-length v4, v1

    if-lez v4, :cond_36

    const-string v4, "pm25Indoor"

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_36
    if-eqz v1, :cond_d2

    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_d2

    const-string v4, "pm25Outdoor"

    aget v1, v1, v5

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1b

    goto/16 :goto_a2

    :catchall_1b
    move-exception v0

    move-object v1, v0

    :try_start_32
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v32

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_b

    goto/16 :goto_18

    :pswitch_f
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    :try_start_33
    sget-object v1, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    if-eqz v1, :cond_37

    const-string v4, "totalMileage"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getTotalMileageValue()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "evMileage"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getEVMileageValue()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hevMileage"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getHEVMileageValue()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "drivingTime"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getDrivingTimeValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lastElecConPHM"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getLastElecConPHMValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "totalElecConPHM"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getTotalElecConPHMValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lastFuelConPHM"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getLastFuelConPHMValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "totalFuelConPHM"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getTotalFuelConPHMValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "totalElecCon"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getTotalElecConValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "totalFuelCon"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getTotalFuelConValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "elecRange"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getElecDrivingRangeValue()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fuelRange"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getFuelDrivingRangeValue()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fuelPercent"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getFuelPercentageValue()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "elecPercent"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getElecPercentageValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1c

    goto :goto_33

    :catchall_1c
    move-exception v0

    move-object v1, v0

    :try_start_34
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v64

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_b

    :cond_37
    :goto_33
    :try_start_35
    sget-object v1, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    if-eqz v1, :cond_38

    const-string v4, "averageSpeed"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getAverageSpeed()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "externalChargingPower"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getExternalChargingPower()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    goto :goto_34

    :catchall_1d
    move-exception v0

    move-object v1, v0

    :try_start_36
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v57

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_b

    :cond_38
    :goto_34
    :try_start_37
    invoke-static {}, Lcom/byd/launcher/CoreService;->Ͱ()I

    move-result v1

    const-string v4, "energyType"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e

    goto/16 :goto_a2

    :catchall_1e
    move-exception v0

    move-object v1, v0

    :try_start_38
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v47

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_b

    goto/16 :goto_32

    :pswitch_10
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    :try_start_39
    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_39

    const-string v4, "dvrStatus"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getDrivingRecorderSwitchState()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1f

    goto :goto_35

    :catchall_1f
    move-exception v0

    move-object v1, v0

    :try_start_3a
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v65

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_b

    :cond_39
    :goto_35
    :try_start_3b
    sget-object v1, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    if-eqz v1, :cond_d2

    const-string v4, "doorLockLF"

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "doorLockLR"

    sget-object v4, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "doorLockRF"

    sget-object v4, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "doorLockRR"

    sget-object v4, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_20

    goto/16 :goto_a2

    :catchall_20
    move-exception v0

    move-object v1, v0

    :try_start_3c
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v58

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_32

    :pswitch_11
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͻ:Lcom/byd/launcher/manager/BYDEngineDeviceManager;

    if-eqz v1, :cond_3b

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3a

    const-string v5, "source"

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_36

    :cond_3a
    const/4 v1, 0x1

    :goto_36
    sget-object v5, Lcom/byd/launcher/CoreService;->ͻ:Lcom/byd/launcher/manager/BYDEngineDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDEngineDeviceManager;->setEngineSimulatorVoiceSource(I)I

    move-result v5

    const-string v7, "source"

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4e

    :cond_3b
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "EngineDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_12
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͻ:Lcom/byd/launcher/manager/BYDEngineDeviceManager;

    if-eqz v1, :cond_3c

    const-string v12, "source"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDEngineDeviceManager;->getEngineSimulatorVoiceSource()I

    move-result v1

    goto/16 :goto_96

    :cond_3c
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "EngineDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_13
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͻ:Lcom/byd/launcher/manager/BYDEngineDeviceManager;

    if-eqz v1, :cond_3e

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3d

    const/4 v5, 0x0

    move-object/from16 v7, v90

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_37

    :cond_3d
    move-object/from16 v7, v90

    const/4 v1, 0x0

    :goto_37
    sget-object v5, Lcom/byd/launcher/CoreService;->ͻ:Lcom/byd/launcher/manager/BYDEngineDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDEngineDeviceManager;->setEngineVoiceSimulatorState(I)I

    move-result v5

    goto/16 :goto_5e

    :cond_3e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "EngineDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_14
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v87

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͻ:Lcom/byd/launcher/manager/BYDEngineDeviceManager;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDEngineDeviceManager;->getEngineVoiceSimulatorState()I

    move-result v1

    :goto_38
    move-object v8, v5

    move v5, v1

    goto/16 :goto_94

    :cond_3f
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "EngineDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_15
    move-object v3, v4

    move-object v10, v5

    move-object v5, v6

    move-object v6, v2

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_40

    const-string v4, "savedIAL"

    const/4 v7, -0x1

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_39

    :cond_40
    const/4 v4, -0x1

    :goto_39
    if-eqz v1, :cond_41

    const-string v7, "savedBacklight"

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3a

    :cond_41
    const/4 v1, -0x1

    :goto_3a
    if-lez v4, :cond_42

    sget-object v7, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v7, :cond_42

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v4, v9}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setIALBrightness(III)I

    :cond_42
    const/4 v4, 0x1

    if-le v1, v4, :cond_43

    sget-object v4, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    if-eqz v4, :cond_43

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->setBacklightBrightness(I)I
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_b

    :cond_43
    :try_start_3d
    invoke-static/range {v73 .. v73}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v70, v7, v8

    invoke-virtual {v1, v10, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v74, v4, v8

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v4, "android.os.IPowerManager$Stub"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_24

    :try_start_3e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "TurnBacklightOn"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "IPowerManager.TurnBacklightOn"
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_21

    goto :goto_3b

    :catchall_21
    move-exception v0

    move-object v4, v0

    :try_start_3f
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_24

    move-object/from16 v4, v85

    :goto_3b
    move-object/from16 v7, v85

    :try_start_40
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_23

    if-eqz v5, :cond_44

    :try_start_41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "setBacklightMode"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "IPowerManager.setBacklightMode(1)"
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_22

    goto :goto_3d

    :catchall_22
    move-exception v0

    move-object v1, v0

    :try_start_42
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v8, v29

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_23

    goto :goto_3d

    :catchall_23
    move-exception v0

    move-object v1, v0

    goto :goto_3c

    :catchall_24
    move-exception v0

    move-object/from16 v7, v85

    move-object v1, v0

    move-object v4, v7

    :goto_3c
    :try_start_43
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v8, v36

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_3d
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_b

    if-eqz v1, :cond_45

    :try_start_44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "input"

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const-string v8, "keyevent"

    const/4 v9, 0x1

    aput-object v8, v5, v9

    const-string v8, "224"

    const/4 v9, 0x2

    aput-object v8, v5, v9

    invoke-virtual {v1, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    const-string v4, "input keyevent WAKEUP(224)"
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_25

    goto :goto_3e

    :catchall_25
    move-exception v0

    move-object v1, v0

    :try_start_45
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v8, v28

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    :goto_3e
    const-string v1, "screenOnMethod"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "done"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const/4 v5, 0x1

    goto :goto_3f

    :cond_46
    const/4 v5, 0x0

    :goto_3f
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object/from16 v1, v27

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_64

    :pswitch_16
    move-object v3, v4

    move-object v10, v5

    move-object v5, v6

    move-object/from16 v7, v85

    move-object v6, v2

    move-object v2, v1

    const/4 v1, -0x1

    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v4, :cond_47

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getIALBrightness(I)I

    move-result v4

    sget-object v8, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    const/4 v9, 0x3

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v12, v12}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setIALBrightness(III)I

    goto :goto_40

    :cond_47
    move v4, v1

    :goto_40
    sget-object v8, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    if-eqz v8, :cond_48

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->setDayTimeLightState(I)I

    :cond_48
    sget-object v8, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    if-eqz v8, :cond_49

    invoke-virtual {v8}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getBacklightBrightness()I

    move-result v1
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_b

    :cond_49
    :try_start_46
    invoke-static/range {v73 .. v73}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v70, v12, v13

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v74, v9, v13

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    const-string v9, "android.os.IPowerManager$Stub"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v9, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_29

    :try_start_47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "TurnBacklightOff"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "IPowerManager.TurnBacklightOff"
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_26

    goto :goto_41

    :catchall_26
    move-exception v0

    move-object v8, v0

    :try_start_48
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v10, v23

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_29

    move-object v8, v7

    :goto_41
    :try_start_49
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_28

    if-eqz v9, :cond_4a

    :try_start_4a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "setBacklightMode"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "IPowerManager.setBacklightMode(0)"
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_27

    goto :goto_43

    :catchall_27
    move-exception v0

    move-object v5, v0

    :try_start_4b
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v10, v21

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_28

    goto :goto_43

    :catchall_28
    move-exception v0

    move-object v5, v0

    goto :goto_42

    :catchall_29
    move-exception v0

    move-object v5, v0

    move-object v8, v7

    :goto_42
    :try_start_4c
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v10, v41

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_43
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_b

    if-eqz v5, :cond_4b

    :try_start_4d
    sget-object v5, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    move-object/from16 v9, v74

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "goToSleep"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "PowerManager.goToSleep"
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2a

    goto :goto_44

    :catchall_2a
    move-exception v0

    move-object v5, v0

    :try_start_4e
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v10, v20

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_44
    const-string v5, "savedIAL"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "savedBacklight"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "screenOffMethod"

    invoke-virtual {v2, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "done"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    const/4 v4, 0x1

    goto :goto_45

    :cond_4c
    const/4 v4, 0x0

    :goto_45
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object/from16 v1, v19

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_64

    :pswitch_17
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_50

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4d

    const-string v5, "channel"

    const/4 v7, 0x3

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_46

    :cond_4d
    const/4 v5, 0x3

    :goto_46
    if-eqz v1, :cond_4e

    const-string v7, "brightness"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_47

    :cond_4e
    const/4 v7, 0x0

    :goto_47
    if-eqz v1, :cond_4f

    const-string v8, "flag"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_48

    :cond_4f
    const/4 v1, 0x0

    :goto_48
    sget-object v8, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v8, v5, v7, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setIALBrightness(III)I

    move-result v5

    goto/16 :goto_4e

    :cond_50
    new-instance v1, Ljava/lang/Exception;

    move-object/from16 v5, v88

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_18
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_52

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_51

    const-string v4, "channel"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_49

    :cond_51
    const/4 v1, 0x1

    :goto_49
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getIALBrightness(I)I

    move-result v1

    goto/16 :goto_8e

    :cond_52
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_19
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v89

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    if-eqz v1, :cond_55

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_4a

    :cond_53
    const/16 v1, 0x32

    :goto_4a
    sget-object v5, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->setBacklightBrightness(I)I

    move-result v5

    if-ltz v5, :cond_54

    const/4 v5, 0x1

    goto :goto_4b

    :cond_54
    const/4 v5, 0x0

    :goto_4b
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_8e

    :cond_55
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "InstrumentDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1a
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getBacklightBrightness()I

    move-result v1

    goto/16 :goto_8e

    :cond_56
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "InstrumentDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1b
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    if-eqz v1, :cond_57

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->getLightStatus(I)I

    move-result v1

    goto/16 :goto_8e

    :cond_57
    new-instance v1, Ljava/lang/Exception;

    move-object/from16 v10, v80

    invoke-direct {v1, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1c
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getInsideLightDoorState()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hasFeature"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    const-string v5, "InsideLight"

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasFeatureDoorOnline"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    const-string v5, "InsideLightDoorOnline"

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    :goto_4c
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :cond_58
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1d
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->turnOnInsideLight()Z

    move-result v1

    :goto_4d
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :cond_59
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1e
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->turnOffInsideLight()I

    move-result v5

    :goto_4e
    move-object v8, v4

    goto/16 :goto_94

    :cond_5a
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1f
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v4, v89

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_5c

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5b

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_4f

    :cond_5b
    const/4 v1, 0x0

    :goto_4f
    sget-object v5, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setInsideLightDoorState(I)I

    move-result v5

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    const-string v4, "InsideLight"

    invoke-virtual {v1, v4}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "hasFeature"

    goto :goto_4d

    :cond_5c
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_20
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͺ:Lcom/byd/launcher/manager/BYDChargingDeviceManager;

    if-eqz v1, :cond_5e

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5d

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_50

    :cond_5d
    const/4 v1, 0x1

    :goto_50
    sget-object v4, Lcom/byd/launcher/CoreService;->ͺ:Lcom/byd/launcher/manager/BYDChargingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDChargingDeviceManager;->setSocSaveSwitch(I)V

    goto/16 :goto_98

    :cond_5e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "ChargingDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_21
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͺ:Lcom/byd/launcher/manager/BYDChargingDeviceManager;

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDChargingDeviceManager;->getSocSaveSwitch()I

    move-result v1

    goto/16 :goto_8e

    :cond_5f
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "ChargingDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_22
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v4, v89

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_61

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_60

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_51

    :cond_60
    const/4 v1, 0x0

    :goto_51
    sget-object v5, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setINSTheme(I)I

    move-result v5

    goto/16 :goto_5e

    :cond_61
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_23
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getINSTheme()I

    move-result v1

    goto/16 :goto_8e

    :cond_62
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_24
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_63

    const-string v12, "config"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getSOCConfig()I

    move-result v1

    goto/16 :goto_96

    :cond_63
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_25
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getRearViewMirrorFlip()I

    move-result v1

    goto/16 :goto_8e

    :cond_64
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_26
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_66

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_65

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_52

    :cond_65
    const/4 v1, 0x0

    :goto_52
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setRearViewMirrorFlip(I)V

    goto/16 :goto_8e

    :cond_66
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_27
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v90

    move-object v2, v1

    const/4 v5, -0x1

    const-string v1, "android.hardware.bydauto.adas.BYDAutoADASDevice"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getInstance"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v75, v9, v10

    invoke-virtual {v1, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v8, "getHDCState"

    new-array v9, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_b7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_8e

    :pswitch_28
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v89

    move-object/from16 v7, v90

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_67

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_53

    :cond_67
    const/4 v1, 0x0

    :goto_53
    const-string v5, "android.hardware.bydauto.adas.BYDAutoADASDevice"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "getInstance"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v75, v10, v11

    invoke-virtual {v5, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    sget-object v12, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    aput-object v12, v10, v11

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v10, "setHDCState"

    new-array v12, v9, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v11

    invoke-virtual {v5, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v5, :cond_68

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    :cond_68
    const-string v1, "null"

    :goto_54
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :pswitch_29
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_69

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getEPedalMode()I

    move-result v1

    goto/16 :goto_8e

    :cond_69
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2a
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_6b

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6a

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_55

    :cond_6a
    const/4 v1, 0x0

    :goto_55
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setEPedalMode(I)I

    goto/16 :goto_8e

    :cond_6b
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2b
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_6d

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6c

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_56

    :cond_6c
    const/4 v1, 0x1

    :goto_56
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->voiceCtlBackDoor(I)I

    goto/16 :goto_98

    :cond_6d
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2c
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v79

    move-object/from16 v5, v88

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_6f

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6e

    const-string v4, "feature"

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_57

    :cond_6e
    move-object v8, v7

    :goto_57
    const-string v4, "supported"

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v1, v8}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_4d

    :cond_6f
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2d
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getOverspeedLock()I

    move-result v1

    goto/16 :goto_8e

    :cond_70
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2e
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_72

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_71

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_58

    :cond_71
    const/4 v1, 0x0

    :goto_58
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setOverspeedLock(I)V

    goto/16 :goto_8e

    :cond_72
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2f
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getLockOff()I

    move-result v1

    goto/16 :goto_8e

    :cond_73
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_30
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_75

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_74

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_59

    :cond_74
    const/4 v1, 0x0

    :goto_59
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setLockOff(I)V

    goto/16 :goto_8e

    :cond_75
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_31
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getPM25Power()I

    move-result v1

    goto/16 :goto_8e

    :cond_76
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_32
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_78

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_77

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_5a

    :cond_77
    const/4 v1, 0x0

    :goto_5a
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setPM25Power(I)V

    goto/16 :goto_8e

    :cond_78
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_33
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v83

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    if-eqz v1, :cond_7a

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_79

    const-string v5, "playing"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_79

    const/4 v1, 0x1

    goto :goto_5b

    :cond_79
    const/4 v1, 0x0

    :goto_5b
    sget-object v5, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sendMusicState(Z)V

    goto/16 :goto_6f

    :cond_7a
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "InstrumentDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_34
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v83

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    if-eqz v1, :cond_7c

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7b

    const-string v5, "name"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    :cond_7b
    const/4 v1, 0x0

    :goto_5c
    sget-object v5, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sendMusicName(Ljava/lang/String;)V

    goto/16 :goto_6f

    :cond_7c
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "InstrumentDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_35
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v4, v89

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_7e

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7d

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_5d

    :cond_7d
    const/4 v1, 0x0

    :goto_5d
    sget-object v5, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setPadRotation(I)I

    move-result v5

    :goto_5e
    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v8, v4

    goto/16 :goto_94

    :cond_7e
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_36
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_80

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7f

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_5f

    :cond_7f
    const/4 v1, 0x0

    :goto_5f
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setSOCTarget(I)V

    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getSOCTarget()I

    move-result v4

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "readBack"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eq v4, v1, :cond_d2

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v25

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but readBack="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_60
    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    :cond_80
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_37
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_81

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getSOCTarget()I

    move-result v1

    goto/16 :goto_8e

    :cond_81
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_38
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_83

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_82

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_61

    :cond_82
    const/4 v1, 0x0

    :goto_61
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setEnergyFeedback(I)V

    goto/16 :goto_8e

    :cond_83
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_39
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v88

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getEnergyFeedback()I

    move-result v1

    goto/16 :goto_8e

    :cond_84
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3a
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v80

    move-object/from16 v5, v87

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    if-eqz v1, :cond_86

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_85

    const-string v7, "on"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_85

    const/4 v1, 0x1

    goto :goto_62

    :cond_85
    const/4 v1, 0x0

    :goto_62
    sget-object v7, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    invoke-virtual {v7, v1}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->setDoubleFlashLight(Z)Z

    move-result v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "on"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v4, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->getDoubleFlashLightState()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "debug"

    sget-object v8, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    invoke-virtual {v8}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->getDebugInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v8, v22

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") ok="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    :cond_86
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3b
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v80

    move-object/from16 v5, v87

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    if-eqz v1, :cond_87

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->getDoubleFlashLightState()I

    move-result v1

    goto/16 :goto_38

    :cond_87
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3c
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v80

    move-object/from16 v5, v87

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->getDayTimeLightState()I

    move-result v1

    goto/16 :goto_38

    :cond_88
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3d
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v80

    move-object/from16 v4, v89

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    if-eqz v1, :cond_8a

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_89

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_63

    :cond_89
    const/4 v1, 0x0

    :goto_63
    sget-object v5, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->setDayTimeLightState(I)I

    move-result v5

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v7, v33

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ret="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :goto_64
    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    :cond_8a
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3e
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v80

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    if-eqz v1, :cond_8b

    const-string v12, "autoStatus"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->getLightAutoStatus()I

    move-result v1

    goto/16 :goto_96

    :cond_8b
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3f
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v80

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    if-eqz v1, :cond_8d

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8c

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_65

    :cond_8c
    const/4 v1, 0x0

    :goto_65
    const-string v12, "status"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDLightDeviceManager;->getLightStatus(I)I

    move-result v1

    goto/16 :goto_96

    :cond_8d
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_40
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    if-eqz v1, :cond_8e

    const-string v4, "allDoors"

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "leftFront"

    sget-object v4, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "leftRear"

    sget-object v4, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rightFront"

    sget-object v4, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "rightRear"

    sget-object v1, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v1

    goto/16 :goto_96

    :cond_8e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "DoorLockDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_41
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v83

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    if-eqz v1, :cond_91

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8f

    const/4 v5, 0x0

    move-object/from16 v11, v84

    invoke-virtual {v1, v11, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_66

    :cond_8f
    const/4 v5, 0x0

    move v7, v5

    :goto_66
    if-eqz v1, :cond_90

    const-string v8, "action"

    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_67

    :cond_90
    const/4 v1, 0x0

    :goto_67
    sget-object v5, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    invoke-virtual {v5, v7, v1}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->setDoorLock(II)V

    goto/16 :goto_6f

    :cond_91
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "DoorLockDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_42
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v84

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    if-eqz v1, :cond_93

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_92

    const/4 v4, 0x0

    invoke-virtual {v1, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_68

    :cond_92
    const/4 v1, 0x0

    :goto_68
    const-string v12, "status"

    sget-object v4, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;->getDoorLockStatus(I)I

    move-result v1

    goto/16 :goto_96

    :cond_93
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "DoorLockDeviceManager not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_43
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v83

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_98

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_94

    const-string v5, "lf"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_69

    :cond_94
    const/4 v5, 0x0

    :goto_69
    if-eqz v1, :cond_95

    const-string v7, "rf"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_6a

    :cond_95
    const/4 v7, 0x0

    :goto_6a
    if-eqz v1, :cond_96

    const-string v8, "lr"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_6b

    :cond_96
    const/4 v8, 0x0

    :goto_6b
    if-eqz v1, :cond_97

    const-string v9, "rr"

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_6c

    :cond_97
    const/4 v1, 0x0

    :goto_6c
    sget-object v9, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    invoke-virtual {v9, v5, v7, v8, v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setAllWindowState(IIII)I

    goto :goto_6f

    :cond_98
    new-instance v1, Ljava/lang/Exception;

    move-object/from16 v11, v86

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_44
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object/from16 v5, v87

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_9b

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_99

    invoke-virtual {v1, v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_6d

    :cond_99
    move v7, v4

    :goto_6d
    if-eqz v1, :cond_9a

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_6e

    :cond_9a
    const/4 v1, 0x0

    :goto_6e
    sget-object v4, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    invoke-virtual {v4, v7, v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setBodyWindowCtrlState(II)I

    invoke-virtual {v2, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_38

    :cond_9b
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_45
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v10, v83

    move-object/from16 v11, v86

    move-object/from16 v4, v89

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_9c

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setMoonRoofAndSunshadeStop()I

    :goto_6f
    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :cond_9c
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_46
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_9d

    const-string v12, "position"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getSunroofWindowblindPosition()I

    move-result v1

    goto/16 :goto_96

    :cond_9d
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_47
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_9f

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9e

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_70

    :cond_9e
    const/4 v1, 0x0

    :goto_70
    sget-object v4, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setSunshadeState(I)I

    goto/16 :goto_8e

    :cond_9f
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_48
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getSunroofState()I

    move-result v1

    goto/16 :goto_8e

    :cond_a0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_49
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_a1

    const-string v12, "position"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getSunroofPosition()I

    move-result v1

    goto/16 :goto_96

    :cond_a1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4a
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_a3

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a2

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_71

    :cond_a2
    const/4 v1, 0x0

    :goto_71
    sget-object v4, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setMoonRoofState(I)I

    goto/16 :goto_8e

    :cond_a3
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4b
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_a4

    const-string v8, "model"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getAutoModelName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a0

    :cond_a4
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4c
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_a5

    const-string v8, "vin"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getAutoVIN()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a0

    :cond_a5
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4d
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_a6

    const-string v12, "config"

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getMoonRoofConfig()I

    move-result v1

    goto/16 :goto_96

    :cond_a6
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4e
    move-object v3, v4

    move-object v10, v5

    move-object v5, v6

    move-object/from16 v9, v74

    move-object/from16 v7, v85

    move-object v6, v2

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_b

    if-eqz v1, :cond_a7

    :try_start_4f
    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getBacklightBrightness()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v8, v54

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->setBacklightBrightness(I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v8, v24

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_a7

    const-string v8, "setBacklightBrightness(0)"
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2b

    const/4 v1, 0x1

    goto :goto_72

    :catchall_2b
    move-exception v0

    move-object v1, v0

    :try_start_50
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v8, v55

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    const/4 v1, 0x0

    move-object v8, v7

    :goto_72
    if-nez v1, :cond_a8

    sget-object v4, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_b

    if-eqz v4, :cond_a8

    const/4 v7, 0x0

    :try_start_51
    invoke-virtual {v4, v7, v7}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->setBacklightModeState(II)I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v12, v49

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_a8

    const-string v8, "setBacklightModeState(0,0)"
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_2c

    const/4 v1, 0x1

    goto :goto_73

    :catchall_2c
    move-exception v0

    move-object v4, v0

    :try_start_52
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v12, v50

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_b

    :cond_a8
    :goto_73
    if-nez v1, :cond_a9

    :try_start_53
    invoke-static/range {v73 .. v73}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x1

    new-array v12, v7, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v70, v12, v13

    invoke-virtual {v4, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v13

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string v7, "android.os.IPowerManager$Stub"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "TurnBacklightOffNoUpdateLocked"

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "IPowerManager.TurnBacklightOffNoUpdateLocked"
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_2d

    const/4 v1, 0x1

    goto :goto_74

    :catchall_2d
    move-exception v0

    move-object v4, v0

    :try_start_54
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v56

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_b

    :cond_a9
    :goto_74
    if-nez v1, :cond_aa

    :try_start_55
    sget-object v4, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "goToSleep"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v12

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "PowerManager.goToSleep"
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_2e

    const/4 v1, 0x1

    goto :goto_75

    :catchall_2e
    move-exception v0

    move-object v4, v0

    :try_start_56
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v51

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_b

    :cond_aa
    :goto_75
    if-nez v1, :cond_ab

    :try_start_57
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "input"

    const/4 v9, 0x0

    aput-object v7, v5, v9

    const-string v7, "keyevent"

    const/4 v9, 0x1

    aput-object v7, v5, v9

    const-string v7, "26"

    const/4 v9, 0x2

    aput-object v7, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    const-string v8, "input keyevent 26"
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_2f

    const/4 v1, 0x1

    goto :goto_76

    :catchall_2f
    move-exception v0

    move-object v4, v0

    :try_start_58
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v48

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    :goto_76
    if-eqz v1, :cond_ac

    move-object/from16 v1, v37

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method"

    :goto_77
    invoke-virtual {v2, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :cond_ac
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "All backlight off methods failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4f
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v85

    move-object/from16 v4, v89

    move-object v2, v1

    const/4 v1, -0x1

    const-string v5, "closeTrunk: starting multi-method attempt"

    invoke-static {v3, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_b

    if-eqz v5, :cond_ad

    const/4 v8, 0x3

    :try_start_59
    invoke-virtual {v5, v8}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->voiceCtlBackDoor(I)I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v42

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_31

    if-nez v5, :cond_ad

    :try_start_5a
    const-string v8, "voiceCtlBackDoor(3)"
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_30

    const/4 v1, 0x0

    goto :goto_7a

    :catchall_30
    move-exception v0

    const/4 v1, 0x0

    :goto_78
    move-object v5, v0

    goto :goto_79

    :catchall_31
    move-exception v0

    goto :goto_78

    :goto_79
    :try_start_5b
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v43

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    move-object v8, v7

    :goto_7a
    if-eqz v1, :cond_ae

    sget-object v5, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_b

    if-eqz v5, :cond_ae

    :try_start_5c
    invoke-virtual {v5}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->closeTrunk()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v9, v39

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_33

    if-nez v5, :cond_ae

    :try_start_5d
    const-string v8, "bodywork.closeTrunk"
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_32

    const/4 v1, 0x0

    goto :goto_7d

    :catchall_32
    move-exception v0

    const/4 v1, 0x0

    :goto_7b
    move-object v5, v0

    goto :goto_7c

    :catchall_33
    move-exception v0

    goto :goto_7b

    :goto_7c
    :try_start_5e
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v9, v40

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_b

    :cond_ae
    :goto_7d
    if-eqz v1, :cond_b0

    :try_start_5f
    const-class v5, Landroid/hardware/bydauto/BYDAutoDeviceManager;

    const-string v7, "getInstance"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v75, v9, v10

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v9, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    if-eqz v9, :cond_af

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v9, "setInt"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v10, 0x3e9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v9, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {v5, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v9, v18

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_b0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_35

    if-nez v5, :cond_b0

    :try_start_60
    const-string v8, "DeviceManager.setInt(close)"
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_34

    const/4 v1, 0x0

    goto :goto_80

    :catchall_34
    move-exception v0

    const/4 v1, 0x0

    :goto_7e
    move-object v5, v0

    goto :goto_7f

    :cond_af
    :try_start_61
    new-instance v5, Ljava/lang/Exception;

    const-string v7, "mCoreContext is null"

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_35

    :catchall_35
    move-exception v0

    goto :goto_7e

    :goto_7f
    :try_start_62
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v9, v44

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    :goto_80
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v52

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " method="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_81
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_8d

    :pswitch_50
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v85

    move-object/from16 v4, v89

    move-object v2, v1

    const/4 v1, -0x1

    const-string v5, "openTrunk: starting multi-method attempt"

    invoke-static {v3, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_b

    if-eqz v5, :cond_b1

    const/4 v8, 0x1

    :try_start_63
    invoke-virtual {v5, v8}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->voiceCtlBackDoor(I)I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v45

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_37

    if-nez v5, :cond_b2

    :try_start_64
    const-string v8, "voiceCtlBackDoor"
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_36

    const/4 v1, 0x0

    goto :goto_85

    :catchall_36
    move-exception v0

    const/4 v1, 0x0

    :goto_82
    move-object v5, v0

    goto :goto_83

    :catchall_37
    move-exception v0

    goto :goto_82

    :goto_83
    :try_start_65
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v46

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_84

    :cond_b1
    if-nez v5, :cond_b2

    const-string v5, "openTrunk M1 skipped: SettingDeviceManager is null"

    :goto_84
    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    move-object v8, v7

    :goto_85
    if-eqz v1, :cond_b3

    sget-object v5, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_b

    if-eqz v5, :cond_b3

    :try_start_66
    invoke-virtual {v5}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->openTrunk()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v9, v34

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_39

    if-nez v5, :cond_b4

    :try_start_67
    const-string v8, "bodywork.openTrunk"
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_38

    const/4 v1, 0x0

    goto :goto_89

    :catchall_38
    move-exception v0

    const/4 v1, 0x0

    :goto_86
    move-object v5, v0

    goto :goto_87

    :catchall_39
    move-exception v0

    goto :goto_86

    :goto_87
    :try_start_68
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v9, v35

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_88

    :cond_b3
    sget-object v5, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-nez v5, :cond_b4

    const-string v5, "openTrunk M2 skipped: BodyworkDeviceManager is null"

    :goto_88
    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_b

    :cond_b4
    :goto_89
    if-eqz v1, :cond_b6

    :try_start_69
    const-class v5, Landroid/hardware/bydauto/BYDAutoDeviceManager;

    const-string v7, "getInstance"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v75, v9, v10

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v9, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    if-eqz v9, :cond_b5

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v9, "setInt"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v10, 0x3e9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {v5, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v9, v16

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_b6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_3b

    if-nez v5, :cond_b6

    :try_start_6a
    const-string v1, "DeviceManager.setInt"
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_3a

    const/4 v5, 0x0

    move-object v8, v1

    move v1, v5

    goto :goto_8c

    :catchall_3a
    move-exception v0

    const/4 v1, 0x0

    :goto_8a
    move-object v5, v0

    goto :goto_8b

    :cond_b5
    :try_start_6b
    new-instance v5, Ljava/lang/Exception;

    const-string v7, "mCoreContext is null"

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_3b

    :catchall_3b
    move-exception v0

    goto :goto_8a

    :goto_8b
    :try_start_6c
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v9, v31

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    :goto_8c
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v38

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " method="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    :goto_8d
    const-string v1, "method"

    goto/16 :goto_77

    :pswitch_51
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object/from16 v7, v90

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_b8

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getDoorState(I)I

    move-result v1

    :goto_8e
    move v5, v1

    :cond_b7
    move-object v8, v7

    goto/16 :goto_94

    :cond_b8
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_52
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_b9

    const/4 v1, 0x6

    const/4 v4, 0x1

    :goto_8f
    if-gt v4, v1, :cond_d2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "door_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    invoke-virtual {v7, v4}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getDoorState(I)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :cond_b9
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_53
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object/from16 v5, v87

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_bb

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_ba

    const-string v4, "door"

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_90

    :cond_ba
    const/4 v1, 0x0

    :goto_90
    sget-object v4, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getDoorState(I)I

    move-result v1

    goto/16 :goto_38

    :cond_bb
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_54
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_bd

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_bc

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_91

    :cond_bc
    const/4 v1, 0x0

    :goto_91
    const-string v12, "percent"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getWindowOpenPercent(I)I

    move-result v1

    goto/16 :goto_96

    :cond_bd
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_55
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v86

    move-object/from16 v5, v87

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    if-eqz v1, :cond_bf

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_be

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_92

    :cond_be
    const/4 v1, 0x0

    :goto_92
    sget-object v4, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getWindowState(I)I

    move-result v1

    goto/16 :goto_38

    :cond_bf
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_56
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v84

    move-object/from16 v5, v87

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_c0

    const/4 v7, 0x1

    goto :goto_93

    :cond_c0
    const/4 v7, 0x0

    :goto_93
    sget-object v8, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v8, v1, v7}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->setAcDefrostState(II)I

    move-result v7

    if-nez v7, :cond_c1

    invoke-virtual {v2, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v8, v5

    move v5, v4

    goto/16 :goto_94

    :cond_c1
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7f3a\u5c11area\u6216state\u53c2\u6570"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_57
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v4, v78

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v5, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->setAcCycleMode(I)I

    move-result v5

    if-nez v5, :cond_c3

    goto/16 :goto_95

    :cond_c3
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7f3a\u5c11mode\u53c2\u6570"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_58
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v5, v82

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->setAcWindLevel(I)I

    move-result v4

    if-nez v4, :cond_c5

    goto/16 :goto_38

    :goto_94
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :cond_c5
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u8bbe\u7f6e\u98ce\u91cf\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c6
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7f3a\u5c11level\u53c2\u6570"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_59
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v4, v78

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v5, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v5, v1}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->setAcTemperatureControlMode(I)I

    move-result v5

    if-nez v5, :cond_c7

    :goto_95
    move-object v12, v4

    goto/16 :goto_96

    :cond_c7
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u8bbe\u7f6e\u6e29\u5ea6\u5206\u63a7\u6a21\u5f0f\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c8
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7f3a\u5c11mode\u53c2\u6570"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5a
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "temp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "temp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v5, v1, v4}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->setAcTemperature(II)I

    move-result v1

    if-nez v1, :cond_c9

    const-string v12, "temp"

    move v1, v4

    goto :goto_96

    :cond_c9
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u8bbe\u7f6e\u6e29\u5ea6\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ca
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7f3a\u5c11temp\u53c2\u6570"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5b
    move-object v6, v2

    move-object v3, v4

    move-object v2, v1

    const-string v1, "fl"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->getTyrePressure(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fr"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->getTyrePressure(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rl"

    sget-object v4, Lcom/byd/launcher/CoreService;->Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->getTyrePressure(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "rr"

    sget-object v1, Lcom/byd/launcher/CoreService;->Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->getTyrePressure(I)I

    move-result v1

    :goto_96
    invoke-virtual {v2, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :pswitch_5c
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v11, v84

    move-object/from16 v7, v90

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_97

    :cond_cb
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_97
    sget-object v4, Lcom/byd/launcher/CoreService;->Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->getTyrePressure(I)I

    move-result v4

    invoke-virtual {v2, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v1, v4

    :goto_98
    move v5, v1

    move-object v8, v7

    goto/16 :goto_94

    :cond_cc
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7f3a\u5c11area\u53c2\u6570"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5d
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v82

    move-object/from16 v4, v89

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    :cond_cd
    const/4 v1, 0x1

    move-object/from16 v7, v81

    invoke-virtual {v9, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v8, 0x0

    invoke-virtual {v9, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v9, v1, v8}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setSeatVentilatingState(II)I

    move-result v9

    :goto_99
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_9b

    :pswitch_5e
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v81

    move-object/from16 v5, v82

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_9a

    :cond_ce
    const/4 v1, 0x1

    :goto_9a
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getSeatVentilatingState(I)I

    move-result v4

    goto :goto_9d

    :pswitch_5f
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v81

    move-object/from16 v5, v82

    move-object/from16 v4, v89

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    :cond_cf
    const/4 v1, 0x1

    invoke-virtual {v9, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v8, 0x0

    invoke-virtual {v9, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v9, v1, v8}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setSeatHeatingState(II)I

    move-result v9

    goto :goto_99

    :goto_9b
    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :pswitch_60
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v7, v81

    move-object/from16 v5, v82

    move-object v2, v1

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_9c

    :cond_d0
    const/4 v1, 0x1

    :goto_9c
    sget-object v4, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    invoke-virtual {v4, v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->getSeatHeatingState(I)I

    move-result v4

    :goto_9d
    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a2

    :pswitch_61
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v87

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->stopAc()I

    move-result v1

    if-nez v1, :cond_d1

    goto :goto_9e

    :pswitch_62
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v87

    move-object v2, v1

    sget-object v1, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->startAc()I

    move-result v1

    if-nez v1, :cond_d1

    :goto_9e
    const-string v1, "\u5df2\u5f00\u542f"

    goto :goto_9f

    :cond_d1
    const-string v1, "\u672a\u5f00\u542f"

    :goto_9f
    move-object v8, v5

    :goto_a0
    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_b

    goto/16 :goto_a2

    :pswitch_63
    move-object v6, v2

    move-object v3, v4

    move-object/from16 v5, v87

    move-object v2, v1

    :try_start_6d
    sget-object v1, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcState()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_3d

    :try_start_6e
    const-string v1, "driverTemp"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcTemperature(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "passengerTemp"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcTemperature(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "windLevel"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcWindLevel()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "windMode"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcWindMode()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tempCtrlMode"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcTemperatureControlMode()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cycleMode"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcCycleMode()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "defrostFront"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcDefrostState(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "defrostRear"

    sget-object v4, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->getAcDefrostState(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_6
    .catchall {:try_start_6e .. :try_end_6e} :catchall_b

    goto :goto_a2

    :goto_a1
    move-object/from16 v5, p0

    move-object/from16 v4, v71

    goto :goto_a6

    :catch_6
    move-exception v0

    move-object v1, v0

    :try_start_6f
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v53

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    :goto_a2
    const-string v1, "data"
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_3d

    move-object/from16 v4, v71

    :try_start_70
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_3c

    move-object/from16 v5, p0

    goto/16 :goto_a9

    :catchall_3c
    move-exception v0

    goto :goto_a3

    :catchall_3d
    move-exception v0

    move-object/from16 v4, v71

    :goto_a3
    move-object v1, v0

    move-object/from16 v5, p0

    goto :goto_a6

    :goto_a4
    :try_start_71
    new-instance v1, Ljava/lang/Exception;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_3f

    move-object/from16 v5, p0

    move-object/from16 v2, v59

    :try_start_72
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_3e

    :catchall_3e
    move-exception v0

    :goto_a5
    move-object v1, v0

    goto :goto_a6

    :catchall_3f
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_a5

    :catchall_40
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v2

    goto :goto_a5

    :goto_a6
    :try_start_73
    const-string v2, "success"

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_a7

    :cond_d3
    const-string v7, "unknown"

    :goto_a7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_73} :catch_7

    goto :goto_a8

    :catch_7
    move-exception v0

    move-object v2, v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error building error response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v2, v6, v3}, Lo/v1;->Ή(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2
    :goto_a8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Command error: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Command execution error ["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a9
    sget-object v1, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/g1;

    if-eqz v1, :cond_d4

    :try_start_74
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/g1;->Ͱ(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_8

    goto :goto_aa

    :catch_8
    move-exception v0

    move-object v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to send response to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v1, v4, v3}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_aa

    .line 4
    :cond_d4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Client "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disconnected, response dropped for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_aa
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c8e13be -> :sswitch_63
        -0x7b7c9564 -> :sswitch_62
        -0x79709795 -> :sswitch_61
        -0x7903dfe5 -> :sswitch_60
        -0x72661e39 -> :sswitch_5f
        -0x7114c3dc -> :sswitch_5e
        -0x6ea82022 -> :sswitch_5d
        -0x6c566f99 -> :sswitch_5c
        -0x69c940cd -> :sswitch_5b
        -0x67935ff0 -> :sswitch_5a
        -0x661e27d4 -> :sswitch_59
        -0x640f4262 -> :sswitch_58
        -0x5c4b3392 -> :sswitch_57
        -0x57c1e1d8 -> :sswitch_56
        -0x56a867d2 -> :sswitch_55
        -0x5410c133 -> :sswitch_54
        -0x50cd84e2 -> :sswitch_53
        -0x50c0ad6a -> :sswitch_52
        -0x4eb20eee -> :sswitch_51
        -0x4427eb68 -> :sswitch_50
        -0x424271f5 -> :sswitch_4f
        -0x41cf8b85 -> :sswitch_4e
        -0x40c3b818 -> :sswitch_4d
        -0x3f2718f6 -> :sswitch_4c
        -0x3d792b03 -> :sswitch_4b
        -0x3a919a7e -> :sswitch_4a
        -0x38318c0f -> :sswitch_49
        -0x37571055 -> :sswitch_48
        -0x37113098 -> :sswitch_47
        -0x352be83c -> :sswitch_46
        -0x341d8003 -> :sswitch_45
        -0x2fe37ab1 -> :sswitch_44
        -0x2e4ddf95 -> :sswitch_43
        -0x2a1d1017 -> :sswitch_42
        -0x27e3e044 -> :sswitch_41
        -0x26e993f8 -> :sswitch_40
        -0x2590f47d -> :sswitch_3f
        -0x228a1725 -> :sswitch_3e
        -0x1c1bbfbf -> :sswitch_3d
        -0x1bd9c430 -> :sswitch_3c
        -0x1a096f26 -> :sswitch_3b
        -0x16981b7d -> :sswitch_3a
        -0xfd60b09 -> :sswitch_39
        -0xd1bd93b -> :sswitch_38
        -0xaa927f3 -> :sswitch_37
        -0xa03a79c -> :sswitch_36
        -0xa0070b2 -> :sswitch_35
        -0x93eb6a7 -> :sswitch_34
        -0x89e5cad -> :sswitch_33
        -0x671e70d -> :sswitch_32
        -0x36150d1 -> :sswitch_31
        -0x14e4cde -> :sswitch_30
        0x13b9242 -> :sswitch_2f
        0x44620af -> :sswitch_2e
        0xa40a40b -> :sswitch_2d
        0xef2b930 -> :sswitch_2c
        0xf1da67e -> :sswitch_2b
        0x104c9b6f -> :sswitch_2a
        0x132f4e39 -> :sswitch_29
        0x15cd0742 -> :sswitch_28
        0x164852b6 -> :sswitch_27
        0x174717b6 -> :sswitch_26
        0x2024fab0 -> :sswitch_25
        0x2327ff51 -> :sswitch_24
        0x23978ba8 -> :sswitch_23
        0x241e5233 -> :sswitch_22
        0x2423dd5a -> :sswitch_21
        0x246ae833 -> :sswitch_20
        0x256a91ef -> :sswitch_1f
        0x25a585ce -> :sswitch_1e
        0x285e48fd -> :sswitch_1d
        0x2c7045c3 -> :sswitch_1c
        0x2e511c6c -> :sswitch_1b
        0x3398bb60 -> :sswitch_1a
        0x34a84723 -> :sswitch_19
        0x3901bcad -> :sswitch_18
        0x3d06a453 -> :sswitch_17
        0x3db0a8f6 -> :sswitch_16
        0x3ec63efc -> :sswitch_15
        0x422acf64 -> :sswitch_14
        0x43f98f72 -> :sswitch_13
        0x463321b2 -> :sswitch_12
        0x48889b2b -> :sswitch_11
        0x494306a1 -> :sswitch_10
        0x4b4e354b -> :sswitch_f
        0x4c500578 -> :sswitch_e
        0x4dcda1ff -> :sswitch_d
        0x4e55c09f -> :sswitch_c
        0x4fa8d714 -> :sswitch_b
        0x51fd180e -> :sswitch_a
        0x54e91017 -> :sswitch_9
        0x56917e0f -> :sswitch_8
        0x58e81256 -> :sswitch_7
        0x5b838bd5 -> :sswitch_6
        0x5b8f858a -> :sswitch_5
        0x5f695a01 -> :sswitch_4
        0x6becd27c -> :sswitch_3
        0x6da9b7e5 -> :sswitch_2
        0x7220c7b6 -> :sswitch_1
        0x7ece5b99 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ˋ(Ljava/lang/String;)V
    .locals 23

    .line 1
    const-string v0, "downTime"

    .line 2
    .line 3
    const-string v1, "action"

    .line 4
    .line 5
    const-string v2, "displayId"

    .line 6
    .line 7
    const-string v3, "params"

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 10
    .line 11
    move-object/from16 v5, p0

    .line 12
    .line 13
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v2, "d"

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string v1, "a"

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    const-string v0, "t"

    .line 68
    .line 69
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    :goto_2
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͱ()V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/byd/launcher/CoreService;->ΐ:Ljava/lang/reflect/Method;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    const/4 v15, 0x1

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    const-class v0, Landroid/view/InputEvent;

    .line 83
    .line 84
    const-string v7, "setDisplayId"

    .line 85
    .line 86
    new-array v8, v15, [Ljava/lang/Class;

    .line 87
    .line 88
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 89
    .line 90
    aput-object v9, v8, v3

    .line 91
    .line 92
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/byd/launcher/CoreService;->ΐ:Ljava/lang/reflect/Method;

    .line 97
    .line 98
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    const-string v0, "pointers"

    .line 103
    .line 104
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const-string v10, "y"

    .line 109
    .line 110
    const-string v11, "x"

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-lez v12, :cond_6

    .line 119
    .line 120
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    new-array v12, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 125
    .line 126
    new-array v13, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 127
    .line 128
    move v14, v3

    .line 129
    :goto_3
    if-ge v14, v4, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    .line 136
    .line 137
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 138
    .line 139
    .line 140
    aput-object v9, v12, v14

    .line 141
    .line 142
    const-string v15, "id"

    .line 143
    .line 144
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    iput v15, v9, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 149
    .line 150
    aget-object v9, v12, v14

    .line 151
    .line 152
    const/4 v15, 0x1

    .line 153
    iput v15, v9, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 154
    .line 155
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    .line 156
    .line 157
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 158
    .line 159
    .line 160
    aput-object v9, v13, v14

    .line 161
    .line 162
    move-object/from16 v17, v0

    .line 163
    .line 164
    move/from16 v21, v1

    .line 165
    .line 166
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    double-to-float v0, v0

    .line 171
    iput v0, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 172
    .line 173
    aget-object v0, v13, v14

    .line 174
    .line 175
    move/from16 v22, v2

    .line 176
    .line 177
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    double-to-float v1, v1

    .line 182
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 183
    .line 184
    aget-object v0, v13, v14

    .line 185
    .line 186
    const-string v1, "p"

    .line 187
    .line 188
    move-object v2, v10

    .line 189
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 190
    .line 191
    invoke-virtual {v3, v1, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 192
    .line 193
    .line 194
    move-result-wide v9

    .line 195
    double-to-float v1, v9

    .line 196
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 197
    .line 198
    aget-object v0, v13, v14

    .line 199
    .line 200
    const v1, 0x3c23d70a    # 0.01f

    .line 201
    .line 202
    .line 203
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 204
    .line 205
    add-int/lit8 v14, v14, 0x1

    .line 206
    .line 207
    move-object v10, v2

    .line 208
    move-object/from16 v0, v17

    .line 209
    .line 210
    move/from16 v1, v21

    .line 211
    .line 212
    move/from16 v2, v22

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    goto :goto_3

    .line 216
    :cond_5
    move/from16 v21, v1

    .line 217
    .line 218
    move/from16 v22, v2

    .line 219
    .line 220
    const/4 v0, 0x0

    .line 221
    const/4 v14, 0x0

    .line 222
    const/high16 v1, 0x3f800000    # 1.0f

    .line 223
    .line 224
    const/high16 v16, 0x3f800000    # 1.0f

    .line 225
    .line 226
    const/16 v17, 0x0

    .line 227
    .line 228
    const/16 v18, 0x0

    .line 229
    .line 230
    const/16 v19, 0x1002

    .line 231
    .line 232
    const/16 v20, 0x0

    .line 233
    .line 234
    move/from16 v9, v21

    .line 235
    .line 236
    move v10, v4

    .line 237
    move-object v11, v12

    .line 238
    move-object v12, v13

    .line 239
    move v13, v0

    .line 240
    move v0, v15

    .line 241
    move v15, v1

    .line 242
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    goto :goto_5

    .line 247
    :cond_6
    move/from16 v21, v1

    .line 248
    .line 249
    move/from16 v22, v2

    .line 250
    .line 251
    move-object v2, v10

    .line 252
    move v0, v15

    .line 253
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    const/4 v3, 0x0

    .line 258
    if-eqz v1, :cond_7

    .line 259
    .line 260
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 261
    .line 262
    .line 263
    move-result-wide v9

    .line 264
    double-to-float v1, v9

    .line 265
    goto :goto_4

    .line 266
    :cond_7
    move v1, v3

    .line 267
    :goto_4
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    if-eqz v9, :cond_8

    .line 272
    .line 273
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 274
    .line 275
    .line 276
    move-result-wide v2

    .line 277
    double-to-float v3, v2

    .line 278
    :cond_8
    new-array v11, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 279
    .line 280
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    .line 281
    .line 282
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 283
    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    aput-object v2, v11, v4

    .line 287
    .line 288
    iput v4, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 289
    .line 290
    iput v0, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 291
    .line 292
    new-array v12, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 293
    .line 294
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 295
    .line 296
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 297
    .line 298
    .line 299
    aput-object v2, v12, v4

    .line 300
    .line 301
    iput v1, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 302
    .line 303
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 304
    .line 305
    const/high16 v1, 0x3f800000    # 1.0f

    .line 306
    .line 307
    iput v1, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 308
    .line 309
    const v1, 0x3c23d70a    # 0.01f

    .line 310
    .line 311
    .line 312
    iput v1, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 313
    .line 314
    const/4 v10, 0x1

    .line 315
    const/4 v13, 0x0

    .line 316
    const/4 v14, 0x0

    .line 317
    const/high16 v15, 0x3f800000    # 1.0f

    .line 318
    .line 319
    const/high16 v16, 0x3f800000    # 1.0f

    .line 320
    .line 321
    const/16 v17, 0x0

    .line 322
    .line 323
    const/16 v18, 0x0

    .line 324
    .line 325
    const/16 v19, 0x1002

    .line 326
    .line 327
    const/16 v20, 0x0

    .line 328
    .line 329
    move/from16 v9, v21

    .line 330
    .line 331
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 332
    .line 333
    .line 334
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    :goto_5
    :try_start_2
    sget-object v2, Lcom/byd/launcher/CoreService;->ΐ:Ljava/lang/reflect/Method;

    .line 336
    .line 337
    new-array v3, v0, [Ljava/lang/Object;

    .line 338
    .line 339
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    const/4 v5, 0x0

    .line 344
    aput-object v4, v3, v5

    .line 345
    .line 346
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move/from16 v2, v21

    .line 350
    .line 351
    and-int/lit16 v2, v2, 0xff

    .line 352
    .line 353
    if-nez v2, :cond_9

    .line 354
    .line 355
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͽ()V

    .line 356
    .line 357
    .line 358
    :cond_9
    sget-object v3, Lcom/byd/launcher/CoreService;->Ώ:Ljava/lang/reflect/Method;

    .line 359
    .line 360
    if-eqz v3, :cond_a

    .line 361
    .line 362
    sget-object v4, Lcom/byd/launcher/CoreService;->Ύ:Ljava/lang/Object;

    .line 363
    .line 364
    const/4 v5, 0x2

    .line 365
    new-array v6, v5, [Ljava/lang/Object;

    .line 366
    .line 367
    const/4 v7, 0x0

    .line 368
    aput-object v1, v6, v7

    .line 369
    .line 370
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    aput-object v5, v6, v0

    .line 375
    .line 376
    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    :cond_a
    if-eq v2, v0, :cond_b

    .line 380
    .line 381
    const/4 v0, 0x3

    .line 382
    if-ne v2, v0, :cond_c

    .line 383
    .line 384
    :cond_b
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͽ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    .line 386
    .line 387
    :cond_c
    :try_start_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :catchall_0
    move-exception v0

    .line 392
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 393
    .line 394
    .line 395
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    :goto_6
    return-void
.end method

.method public static ˏ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "unknown"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "type"

    .line 9
    .line 10
    const-string v3, "response"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v2, "command"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v0, "success"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v0, "error"

    .line 27
    .line 28
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    sget-object p1, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lo/g1;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lo/g1;->Ͱ(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, "sendErrorResponse failed: "

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "CoreService"

    .line 58
    .line 59
    invoke-static {p0, p1, v0}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    return-void
.end method

.method public static Ͱ()I
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    sget-object v1, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getFuelPercentageValue()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-double v1, v1

    .line 11
    sget-object v3, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getElecPercentageValue()D

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sget-object v5, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;->getFuelDrivingRangeValue()I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    sget-wide v7, Lcom/byd/launcher/CoreService;->Ι:J

    .line 27
    .line 28
    sub-long v7, v5, v7

    .line 29
    .line 30
    const-wide/32 v9, 0xea60

    .line 31
    .line 32
    .line 33
    cmp-long v7, v7, v9

    .line 34
    .line 35
    if-lez v7, :cond_0

    .line 36
    .line 37
    sput-wide v5, Lcom/byd/launcher/CoreService;->Ι:J

    .line 38
    .line 39
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    cmp-long v5, v1, v5

    .line 46
    .line 47
    if-ltz v5, :cond_2

    .line 48
    .line 49
    const-wide/16 v5, 0x64

    .line 50
    .line 51
    cmp-long v1, v1, v5

    .line 52
    .line 53
    if-gtz v1, :cond_2

    .line 54
    .line 55
    const-wide/16 v1, 0x0

    .line 56
    .line 57
    cmpl-double v1, v3, v1

    .line 58
    .line 59
    if-lez v1, :cond_1

    .line 60
    .line 61
    return v0

    .line 62
    :cond_1
    const/4 v0, 0x3

    .line 63
    return v0

    .line 64
    :cond_2
    const/4 v0, 0x1

    .line 65
    return v0

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v3, "detectEnergyType error: "

    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v3, "CoreService"

    .line 75
    .line 76
    invoke-static {v1, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    return v0
.end method

.method public static ͱ()V
    .locals 5

    .line 1
    sget-object v0, Lcom/byd/launcher/CoreService;->Ύ:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "input"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.hardware.input.IInputManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/byd/launcher/CoreService;->Ύ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/InputEvent;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "injectInputEvent"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/byd/launcher/CoreService;->Ώ:Ljava/lang/reflect/Method;

    :cond_0
    return-void
.end method

.method public static Ͳ()V
    .locals 8

    .line 1
    sget-object v0, Lcom/byd/launcher/CoreService;->Η:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sget-object v4, Lcom/byd/launcher/CoreService;->Ζ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    .line 44
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v4, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    sget-object v4, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 78
    .line 79
    new-instance v5, Lo/td;

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    invoke-direct {v5, v6, v1}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v5, "flushPending error: "

    .line 93
    .line 94
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v5, "CoreService"

    .line 98
    .line 99
    invoke-static {v1, v4, v5}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/16 v1, 0x32

    .line 108
    .line 109
    if-le v0, v1, :cond_4

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Ljava/lang/Long;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v4

    .line 141
    sub-long v4, v2, v4

    .line 142
    .line 143
    const-wide/16 v6, 0x7530

    .line 144
    .line 145
    cmp-long v1, v4, v6

    .line 146
    .line 147
    if-lez v1, :cond_3

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    return-void
.end method

.method public static ͳ()Landroid/content/Context;
    .locals 10

    .line 1
    const-string v0, "CoreService"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "systemMain"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v2, "getContext: ActivityThread.systemMain() returned null"

    invoke-static {v0, v2}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v6, "getSystemContext"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_1

    const-string v2, "getContext: getSystemContext() returned null"

    invoke-static {v0, v2}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "com.byd.launcher"

    aput-object v7, v6, v4

    const-string v7, "com.xy.instrumentnavigation"

    aput-object v7, v6, v5

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x3

    :try_start_1
    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContext: \u4f7f\u7528\u5305\u540d "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u6210\u529f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContext: \u5305\u540d "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u4e0d\u53ef\u7528: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const-string v3, "getContext: \u6240\u6709\u5305\u540d\u5747\u4e0d\u53ef\u7528\uff0c\u4f7f\u7528 systemContext \u4f5c\u4e3a\u56de\u9000"

    invoke-static {v0, v3}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContext error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v2, v1

    :goto_2
    return-object v2
.end method

.method public static Ͷ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lo/g1;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lo/g1;->Ͷ:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, p0, Lo/g1;->ʹ:J

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "type"

    .line 27
    .line 28
    const-string v2, "response"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "command"

    .line 34
    .line 35
    const-string v2, "heartbeat"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const-string v1, "requestId"

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    :cond_0
    const-string p1, "success"

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lo/g1;->Ͱ(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    const-string p1, "CoreService"

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "Error creating heartbeat response: "

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0, p1}, Lo/v1;->Ή(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p0

    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method public static ͷ()V
    .locals 10

    .line 1
    const-string v0, "CoreService"

    .line 2
    .line 3
    sget-object v1, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v1, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    sput-object v2, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;

    .line 27
    .line 28
    :cond_1
    sget-object v1, Lcom/byd/launcher/CoreService;->Β:Ljava/net/ServerSocket;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    :catch_1
    sput-object v2, Lcom/byd/launcher/CoreService;->Β:Ljava/net/ServerSocket;

    .line 36
    .line 37
    :cond_2
    sget-object v1, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :catchall_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lo/g1;

    .line 58
    .line 59
    :try_start_2
    invoke-virtual {v2}, Lo/g1;->ˋ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    sget-object v1, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    sput-boolean v1, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 70
    .line 71
    new-instance v2, Lo/d1;

    .line 72
    .line 73
    invoke-direct {v2, v1}, Lo/d1;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    sput-object v2, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    .line 82
    new-instance v2, Lo/e1;

    .line 83
    .line 84
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {v2, v3}, Lo/e1;-><init>(Landroid/os/Looper;)V

    .line 89
    .line 90
    .line 91
    sput-object v2, Lcom/byd/launcher/CoreService;->Δ:Lo/e1;

    .line 92
    .line 93
    :try_start_3
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͳ()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    const-string v1, "\u65e0\u6cd5\u83b7\u53d6 Context\uff0cCoreService \u542f\u52a8\u5931\u8d25"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    new-instance v3, Lcom/byd/launcher/CoreContext;

    .line 106
    .line 107
    invoke-direct {v3, v2}, Lcom/byd/launcher/CoreContext;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    sput-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 111
    .line 112
    new-instance v2, Lcom/byd/launcher/manager/BYDAcDeviceManager;

    .line 113
    .line 114
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDAcDeviceManager;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    sput-object v2, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    .line 118
    .line 119
    new-instance v2, Lcom/byd/launcher/manager/BYDTyreDeviceManager;

    .line 120
    .line 121
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 122
    .line 123
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDTyreDeviceManager;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    sput-object v2, Lcom/byd/launcher/CoreService;->Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 127
    .line 128
    :try_start_4
    new-instance v2, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;

    .line 129
    .line 130
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 131
    .line 132
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    sput-object v2, Lcom/byd/launcher/CoreService;->ͳ:Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catchall_1
    move-exception v2

    .line 139
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v4, "Init BYDBodyworkDeviceManager failed: "

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 161
    .line 162
    .line 163
    :goto_1
    :try_start_6
    new-instance v2, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;

    .line 164
    .line 165
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 166
    .line 167
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    sput-object v2, Lcom/byd/launcher/CoreService;->ʹ:Lcom/byd/launcher/manager/BYDDoorLockDeviceManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_2
    move-exception v2

    .line 174
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v4, "Init BYDDoorLockDeviceManager failed: "

    .line 180
    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 196
    .line 197
    .line 198
    :goto_2
    :try_start_8
    new-instance v2, Lcom/byd/launcher/manager/BYDLightDeviceManager;

    .line 199
    .line 200
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 201
    .line 202
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDLightDeviceManager;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    sput-object v2, Lcom/byd/launcher/CoreService;->Ͷ:Lcom/byd/launcher/manager/BYDLightDeviceManager;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catchall_3
    move-exception v2

    .line 209
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v4, "Init BYDLightDeviceManager failed: "

    .line 215
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 231
    .line 232
    .line 233
    :goto_3
    :try_start_a
    new-instance v2, Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    .line 234
    .line 235
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 236
    .line 237
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;-><init>(Landroid/content/Context;)V

    .line 238
    .line 239
    .line 240
    sput-object v2, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :catchall_4
    move-exception v2

    .line 244
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v4, "Init BYDSettingDeviceManager failed: "

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 266
    .line 267
    .line 268
    :goto_4
    :try_start_c
    new-instance v2, Lcom/byd/launcher/manager/BYDChargingDeviceManager;

    .line 269
    .line 270
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 271
    .line 272
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDChargingDeviceManager;-><init>(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    sput-object v2, Lcom/byd/launcher/CoreService;->ͺ:Lcom/byd/launcher/manager/BYDChargingDeviceManager;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :catchall_5
    move-exception v2

    .line 279
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v4, "Init BYDChargingDeviceManager failed: "

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 301
    .line 302
    .line 303
    :goto_5
    :try_start_e
    new-instance v2, Lcom/byd/launcher/manager/BYDEngineDeviceManager;

    .line 304
    .line 305
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 306
    .line 307
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDEngineDeviceManager;-><init>(Landroid/content/Context;)V

    .line 308
    .line 309
    .line 310
    sput-object v2, Lcom/byd/launcher/CoreService;->ͻ:Lcom/byd/launcher/manager/BYDEngineDeviceManager;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :catchall_6
    move-exception v2

    .line 314
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v4, "Init BYDEngineDeviceManager failed: "

    .line 320
    .line 321
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 336
    .line 337
    .line 338
    :goto_6
    :try_start_10
    new-instance v2, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    .line 339
    .line 340
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 341
    .line 342
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;-><init>(Landroid/content/Context;)V

    .line 343
    .line 344
    .line 345
    sput-object v2, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :catchall_7
    move-exception v2

    .line 349
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    const-string v4, "Init BYDInstrumentDeviceManager failed: "

    .line 355
    .line 356
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 371
    .line 372
    .line 373
    :goto_7
    :try_start_12
    new-instance v2, Lcom/byd/launcher/manager/BYDSensorDeviceManager;

    .line 374
    .line 375
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 376
    .line 377
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDSensorDeviceManager;-><init>(Landroid/content/Context;)V

    .line 378
    .line 379
    .line 380
    sput-object v2, Lcom/byd/launcher/CoreService;->ͽ:Lcom/byd/launcher/manager/BYDSensorDeviceManager;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 381
    .line 382
    goto :goto_8

    .line 383
    :catchall_8
    move-exception v2

    .line 384
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v4, "Init BYDSensorDeviceManager failed: "

    .line 390
    .line 391
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 406
    .line 407
    .line 408
    :goto_8
    :try_start_14
    new-instance v2, Lcom/byd/launcher/manager/BYDPM2p5DeviceManager;

    .line 409
    .line 410
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 411
    .line 412
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDPM2p5DeviceManager;-><init>(Landroid/content/Context;)V

    .line 413
    .line 414
    .line 415
    sput-object v2, Lcom/byd/launcher/CoreService;->Ά:Lcom/byd/launcher/manager/BYDPM2p5DeviceManager;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 416
    .line 417
    goto :goto_9

    .line 418
    :catchall_9
    move-exception v2

    .line 419
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v4, "Init BYDPM2p5DeviceManager failed: "

    .line 425
    .line 426
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    .line 441
    .line 442
    .line 443
    :goto_9
    :try_start_16
    new-instance v2, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 444
    .line 445
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 446
    .line 447
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;-><init>(Landroid/content/Context;)V

    .line 448
    .line 449
    .line 450
    sput-object v2, Lcom/byd/launcher/CoreService;->Έ:Lcom/byd/launcher/manager/BYDGearboxDeviceManager;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 451
    .line 452
    goto :goto_a

    .line 453
    :catchall_a
    move-exception v2

    .line 454
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    const-string v4, "Init BYDGearboxDeviceManager failed: "

    .line 460
    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    invoke-static {v0, v3, v2}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    .line 476
    .line 477
    .line 478
    :goto_a
    :try_start_18
    new-instance v2, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    .line 479
    .line 480
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 481
    .line 482
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDStatisticDeviceManager;-><init>(Landroid/content/Context;)V

    .line 483
    .line 484
    .line 485
    sput-object v2, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 486
    .line 487
    goto :goto_b

    .line 488
    :catchall_b
    move-exception v2

    .line 489
    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .line 493
    .line 494
    const-string v4, "Init BYDStatisticDeviceManager failed: "

    .line 495
    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3

    .line 511
    .line 512
    .line 513
    :goto_b
    :try_start_1a
    new-instance v2, Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

    .line 514
    .line 515
    sget-object v3, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 516
    .line 517
    invoke-direct {v2, v3}, Lcom/byd/launcher/manager/BYDEnergyDeviceManager;-><init>(Landroid/content/Context;)V

    .line 518
    .line 519
    .line 520
    sput-object v2, Lcom/byd/launcher/CoreService;->Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 521
    .line 522
    goto :goto_c

    .line 523
    :catchall_c
    move-exception v2

    .line 524
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    const-string v4, "Init BYDEnergyDeviceManager failed: "

    .line 530
    .line 531
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    :goto_c
    new-instance v2, Ljava/lang/Thread;

    .line 549
    .line 550
    new-instance v3, Lo/lII;

    .line 551
    .line 552
    const/4 v4, 0x3

    .line 553
    invoke-direct {v3, v4}, Lo/lII;-><init>(I)V

    .line 554
    .line 555
    .line 556
    const-string v4, "CoreService-Server"

    .line 557
    .line 558
    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 562
    .line 563
    .line 564
    new-instance v2, Ljava/lang/Thread;

    .line 565
    .line 566
    new-instance v3, Lo/lII;

    .line 567
    .line 568
    const/4 v4, 0x5

    .line 569
    invoke-direct {v3, v4}, Lo/lII;-><init>(I)V

    .line 570
    .line 571
    .line 572
    const-string v4, "TouchServer"

    .line 573
    .line 574
    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 578
    .line 579
    .line 580
    invoke-static {}, Lcom/byd/launcher/CoreService;->Ά()V

    .line 581
    .line 582
    .line 583
    sget-object v2, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 584
    .line 585
    if-eqz v2, :cond_6

    .line 586
    .line 587
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_5

    .line 592
    .line 593
    goto :goto_d

    .line 594
    :cond_5
    sget-object v3, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 595
    .line 596
    new-instance v4, Lo/lII;

    .line 597
    .line 598
    const/4 v2, 0x4

    .line 599
    invoke-direct {v4, v2}, Lo/lII;-><init>(I)V

    .line 600
    .line 601
    .line 602
    const-wide/16 v5, 0x1e

    .line 603
    .line 604
    const-wide/16 v7, 0x1e

    .line 605
    .line 606
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 607
    .line 608
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 609
    .line 610
    .line 611
    :cond_6
    :goto_d
    sget-object v2, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 612
    .line 613
    if-eqz v2, :cond_7

    .line 614
    .line 615
    new-instance v3, Lo/lII;

    .line 616
    .line 617
    const/4 v4, 0x1

    .line 618
    invoke-direct {v3, v4}, Lo/lII;-><init>(I)V

    .line 619
    .line 620
    .line 621
    const-wide/16 v4, 0x3e8

    .line 622
    .line 623
    const-wide/16 v6, 0x3e8

    .line 624
    .line 625
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 626
    .line 627
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 628
    .line 629
    .line 630
    :cond_7
    const-string v2, "CoreService created, waiting for server socket to bind..."

    .line 631
    .line 632
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    :goto_e
    const/16 v2, 0x32

    .line 636
    .line 637
    if-ge v1, v2, :cond_9

    .line 638
    .line 639
    sget-boolean v2, Lcom/byd/launcher/CoreService;->ˏ:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    .line 640
    .line 641
    if-eqz v2, :cond_8

    .line 642
    .line 643
    goto :goto_f

    .line 644
    :cond_8
    const-wide/16 v2, 0x64

    .line 645
    .line 646
    :try_start_1c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 647
    .line 648
    .line 649
    :catch_2
    add-int/lit8 v1, v1, 0x1

    .line 650
    .line 651
    goto :goto_e

    .line 652
    :cond_9
    :goto_f
    :try_start_1d
    sget-boolean v1, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 653
    .line 654
    if-eqz v1, :cond_a

    .line 655
    .line 656
    const-string v1, "CoreService started successfully on port 8888"

    .line 657
    .line 658
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    goto :goto_10

    .line 662
    :cond_a
    const-string v1, "CoreService created but server socket not yet ready after 5s"

    .line 663
    .line 664
    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    .line 665
    .line 666
    .line 667
    goto :goto_10

    .line 668
    :catch_3
    move-exception v1

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    const-string v3, "CoreService main error:"

    .line 672
    .line 673
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-static {v0, v2}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 691
    .line 692
    .line 693
    :goto_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    new-instance v1, Ljava/lang/Thread;

    .line 698
    .line 699
    new-instance v2, Lo/lII;

    .line 700
    .line 701
    const/4 v3, 0x2

    .line 702
    invoke-direct {v2, v3}, Lo/lII;-><init>(I)V

    .line 703
    .line 704
    .line 705
    const-string v3, "CoreService-Shutdown"

    .line 706
    .line 707
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 711
    .line 712
    .line 713
    return-void
.end method

.method public static ͺ()V
    .locals 16

    .line 1
    const-string v0, "CoreService"

    .line 2
    .line 3
    sget-object v1, Lcom/byd/launcher/CoreService;->Θ:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "NORMAL"

    .line 19
    .line 20
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v5, "ECO"

    .line 29
    .line 30
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v6, "SPORT"

    .line 39
    .line 40
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :try_start_0
    const-class v4, Landroid/hardware/bydauto/energy/BYDAutoEnergyDevice;

    .line 44
    .line 45
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    array-length v8, v4

    .line 60
    const/4 v9, 0x0

    .line 61
    :goto_0
    const/4 v10, 0x0

    .line 62
    if-ge v9, v8, :cond_7

    .line 63
    .line 64
    aget-object v11, v4, v9

    .line 65
    .line 66
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    if-nez v12, :cond_1

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_1
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 83
    .line 84
    if-eq v12, v13, :cond_2

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_2
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    const-string v13, "ENERGY_OPERATION_"

    .line 93
    .line 94
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    if-nez v13, :cond_3

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_3
    const-string v13, "KEEP"

    .line 103
    .line 104
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-eqz v13, :cond_4

    .line 109
    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :cond_4
    invoke-virtual {v11, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v11, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    const-string v10, "ENERGY_OPERATION_MODE_"

    .line 120
    .line 121
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const-string v11, " -> "

    .line 126
    .line 127
    const-string v13, "="

    .line 128
    .line 129
    if-eqz v10, :cond_5

    .line 130
    .line 131
    const/16 v10, 0x16

    .line 132
    .line 133
    :try_start_1
    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    invoke-interface {v6, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    new-instance v14, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v15, "OperationMode [NEW API]: "

    .line 154
    .line 155
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    :goto_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    goto :goto_2

    .line 178
    :cond_5
    const/16 v10, 0x11

    .line 179
    .line 180
    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    const-string v14, "ECONOMY"

    .line 189
    .line 190
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    if-eqz v14, :cond_6

    .line 195
    .line 196
    move-object v10, v5

    .line 197
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    invoke-interface {v7, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    new-instance v14, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v15, "OperationMode [OLD API]: "

    .line 210
    .line 211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :goto_2
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 234
    .line 235
    const/4 v2, 0x1

    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v4, "OperationMode newApi="

    .line 244
    .line 245
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v4, " oldApi="

    .line 252
    .line 253
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-lt v2, v3, :cond_8

    .line 271
    .line 272
    const-string v2, "OperationMode: using NEW API constants (ENERGY_OPERATION_MODE_*)"

    .line 273
    .line 274
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_8
    invoke-interface {v7}, Ljava/util/Map;->size()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-lt v2, v3, :cond_9

    .line 283
    .line 284
    const-string v2, "OperationMode: using OLD API constants (ENERGY_OPERATION_*)"

    .line 285
    .line 286
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    move-object v6, v7

    .line 290
    goto :goto_4

    .line 291
    :cond_9
    const-string v2, "OperationMode: insufficient constants from either API, using defaults"

    .line 292
    .line 293
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    move-object v6, v10

    .line 297
    :goto_4
    if-eqz v6, :cond_a

    .line 298
    .line 299
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-lt v2, v3, :cond_a

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 306
    .line 307
    .line 308
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-eqz v3, :cond_a

    .line 321
    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Ljava/util/Map$Entry;

    .line 327
    .line 328
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    check-cast v4, Ljava/lang/Integer;

    .line 333
    .line 334
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    check-cast v3, Ljava/lang/String;

    .line 339
    .line 340
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :catchall_0
    move-exception v2

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v4, "initOperationModeMap reflection failed: "

    .line 348
    .line 349
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v2, v3, v0}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :cond_a
    sput-object v1, Lcom/byd/launcher/CoreService;->Θ:Ljava/util/LinkedHashMap;

    .line 356
    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v3, "OperationMode FINAL map: "

    .line 360
    .line 361
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    return-void
.end method

.method public static ͻ()V
    .locals 12

    .line 1
    const-string v0, " on port 8888"

    const-string v1, "CoreService"

    const-string v2, "Killing old process "

    const-string v3, "killProcessOnPort failed: "

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "sh"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "-c"

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "lsof -i :8888 | grep LISTEN | awk \'{print $2}\'"

    const/4 v11, 0x2

    aput-object v8, v7, v11

    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "kill"

    aput-object v6, v2, v9

    const-string v6, "-9"

    aput-object v6, v2, v10

    aput-object v7, v2, v11

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v4}, Lo/g0;->Ε(Ljava/lang/Process;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_1

    :try_start_9
    invoke-static {v4}, Lo/g0;->Ε(Ljava/lang/Process;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v4, :cond_2

    :try_start_a
    invoke-static {v4}, Lo/g0;->Ε(Ljava/lang/Process;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    :cond_2
    throw v0
.end method

.method public static ͼ(Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    :try_start_0
    const-string v0, "event"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-string v3, "gearbox"

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    const-string v3, "brakePedal"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-wide/16 v3, 0x96

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const-wide/16 v3, 0x12c

    .line 34
    .line 35
    :goto_1
    sget-object v5, Lcom/byd/launcher/CoreService;->Ζ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    sget-object v7, Lcom/byd/launcher/CoreService;->Η:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    sub-long v8, v1, v8

    .line 52
    .line 53
    cmp-long v3, v8, v3

    .line 54
    .line 55
    if-gez v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v7, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    sget-object v0, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    sget-object v0, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    .line 87
    new-instance v1, Lo/td;

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    invoke-direct {v1, v2, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "notifyClients error: "

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ": "

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-string v0, "CoreService"

    .line 133
    .line 134
    invoke-static {v0, p0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_2
    return-void
.end method

.method public static ͽ()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "android.hardware.input.InputManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getInputMonitorHost"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "pilferPointers"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static Ά()V
    .locals 9

    .line 1
    const-string v0, "CoreService"

    :try_start_0
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͱ()V

    new-instance v1, Lo/f1;

    invoke-direct {v1}, Lo/f1;-><init>()V

    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addService"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/IBinder;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "byd.launcher.touch"

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Binder touch service registered: byd.launcher.touch"

    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to register touch binder service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static Έ(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͺ()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/byd/launcher/CoreService;->Θ:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "ECONOMY"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string p0, "ECO"

    .line 31
    .line 32
    :cond_0
    return-object p0

    .line 33
    :cond_1
    const-string v0, "MODE_"

    .line 34
    .line 35
    invoke-static {v0, p0}, Lo/v1;->Ͱ(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static Ή()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "getInstance"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "syncInputTransactions"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
