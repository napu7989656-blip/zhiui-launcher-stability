# 智UI Launcher 项目地图

最后更新：2026-08-25  
目标车辆：比亚迪海豚 2021 款时尚版  
目标车机：`13.1.22.2409213.1`

## 0. 当前结论与阶段门禁

- 权威原始基线已保存为 `D:\apk\ORIGINAL_BASELINE.apk`，SHA-256 为 `93042E48C12ED395E8F5D450BE1285E0397897F685EE95AC4080763B6E6DCCD9`。
- apktool 3.0.2 解码和 JADX 1.5.5 反编译已完成，输出位于 `D:\apk\launcher_project`。
- 零功能修改重打包已生成 `D:\apk\Launcher_Rebuild_Test.apk`。静态构建、zipalign、aapt、Manifest、DEX、V2/V3 签名检查均通过。
- 用户已确认车机当前安装的是最新版 `zhiui-final-v2.apk`；它与测试包使用同一包名、versionCode 和开发证书，可采用 `adb install -r` 原位覆盖并保留数据。
- 实车交接步骤已写入 `D:\apk\测试方案.md`。
- `Launcher_Rebuild_Test.apk` 已于 2026-08-25 完成 T01–T10 实车回归；首次 T04 使用了错误的服务/应用选择入口，后按正确的底部九宫格程序列表重新验证并通过；T09/T10 由用户实车确认无问题。零修改重打包实车回归通过，但正式 UI/功能修改仍需遵守一次一个主要功能的门禁。
- 分析发现 APK 内含车辆写控制链和未鉴权的网络监听风险。这里只做静态记录；不得启动测试端口、构造控制报文或主动触发 HDC、门锁、后备箱、车窗、驾驶模式、灯光、全景相机等写控制。
- 长期约束见 `D:\apk\AGENTS.md`。

## 1. 工件与工作区

| 工件 | SHA-256 | 状态 |
|---|---|---|
| `original.apk` | `93042E48...6E6DCCD9` | 原始参照，保留 |
| `智UI_V0.4.2.apk` | `93042E48...6E6DCCD9` | 与 `original.apk` 字节级相同，保留 |
| `ORIGINAL_BASELINE.apk` | `93042E48...6E6DCCD9` | 权威只读基线 |
| `zhiui-final-v2.apk` | `ADA7BD1D...112FF1DC` | 既有开发版，2026-08-18 已实车验证，不能覆盖 |
| `Launcher_Rebuild_Test.apk` | `FF06F821...A24DAAE9` | 本轮零修改重包，静态通过、待实车 |

重新运行签名脚本会改变 APK 签名时间相关字节，因此测试包 SHA-256 可能改变；基线 SHA-256 不得改变。

### 工作树

| 路径 | 用途 |
|---|---|
| `launcher_project/apktool` | Manifest、resources、smali 的修改工作树 |
| `launcher_project/jadx` | Java/Kotlin 伪源码与资源视图，只用于理解 |
| `launcher_project/build` | unsigned/aligned 中间 APK |
| `launcher_project/analyze_baseline.ps1` | 从基线重新执行 aapt/apksigner/apktool/JADX |
| `launcher_project/build.ps1` | apktool build → zipalign → sign → verify |
| `launcher_project/build.bat` | PowerShell 构建脚本的批处理入口 |
| `launcher_project/README.md` | 工作树与脚本说明 |
| `测试方案.md` | 零修改重包的实车测试、停止条件、日志和覆盖回滚方案 |

原始 APK ZIP 内有 73 组、79 个额外路径在 Windows 大小写不敏感语义下冲突，例如混淆后的 `res/2F.xml` 与 `res/2f.xml`。禁止把原包当普通 ZIP 解压到 NTFS；当前 apktool 解码未报资源覆盖错误，并已将资源恢复为规范名称。

## 2. APK 基本信息

| 字段 | 值 |
|---|---|
| 原 APK 文件名 | `original.apk` / `智UI_V0.4.2.apk` |
| packageName / applicationId | `com.byd.launcher` |
| 应用名 | `智UI` |
| versionName | `1.0` |
| versionCode | `1` |
| minSdkVersion | 24 / Android 7.0 |
| targetSdkVersion | 34 / Android 14 |
| compileSdkVersion | 34，codename 14 |
| platformBuildVersion | 34 / Android 14 |
| ABI | 仅 `arm64-v8a` |
| DEX | 1 个 `classes.dex`；原包 5,861,076 bytes |
| 原包 ZIP 条目 | 1,166 |
| resources | `resources.arsc` + 1,095 个 `res/` 文件 |
| assets | 3 个 |
| native libraries | 4 个 |
| Application | `com.byd.launcher.LauncherApp` |

### Assets

- `assets/dexopt/baseline.prof`
- `assets/dexopt/baseline.profm`
- `assets/wallpaper/1.jpg`

### Native libraries

- `lib/arm64-v8a/libonnxruntime.so`
- `lib/arm64-v8a/libsherpa-onnx-c-api.so`
- `lib/arm64-v8a/libsherpa-onnx-cxx-api.so`
- `lib/arm64-v8a/libsherpa-onnx-jni.so`

这些库用于外置 `/sdcard/sherpa-onnx-tts` 模型的离线 TTS，不是 BYD 车辆接口。代码还声明加载 `libkeyvault.so`，但 APK 中没有该库；`KeyVault` 无调用者，摄像头 YUV 路径会捕获加载失败并退回 Java 转换。

## 3. 工具链

| 工具 | 版本/路径 |
|---|---|
| Java / keytool | Temurin 21.0.12，`D:\Android\.jdk21\bin` |
| JADX | 1.5.5，`D:\Android\apk_analysis_dd\jadx` |
| apktool | 3.0.2，`D:\apk\apktool_3.0.2.jar` |
| apktool framework | `D:\apk\apktool-framework\1.apk` |
| Android SDK | `C:\Users\L\AppData\Local\Android\Sdk` |
| aapt/aapt2/apksigner/zipalign | Build Tools 35.0.0（脚本固定使用） |
| adb | Platform Tools 37.0.1 |
| baksmali/smali | 3.0.9，SDK command-line tools 依赖；apktool 已直接使用 |

所有工具都存在，但不在当前 PATH。脚本使用绝对路径，避免不同会话取到不同版本。

## 4. 签名、换签与防篡改

### 证书

| APK | 验证方案 | 证书 | RSA | SHA-256 |
|---|---|---|---:|---|
| 原始基线 | V2=true；V1/V3/V4=false | `CN=xy.launcher` | 2048 | `4d61b9f1ab18dfde56a19ec9d98ec6be254a1b8362b444e19aec0e7e4576df48` |
| 重建测试包 | V2=true；V3=true；V1/V4=false | `CN=ZhiUI V2, OU=Vehicle UI, O=ZhiUI, C=CN` | 3072 | `c2ba875afbf2efbbfff44cb64d4d5e16dd4cb1fef56e441fc8c3bde019fdb13c` |
| `zhiui-final-v2.apk` | 开发签名 | 同重建测试包 | 3072 | 同重建测试包 |

判断：原证书高度符合普通第三方自签名，不是已知系统平台证书。APK 无 `sharedUserId`，并通过内置 ADB/app_process 获取额外能力；这也不符合普通 platform-signed 系统应用设计。最终 OEM 服务是否另有包名/证书白名单，只能由零修改实车测试确认。

### APK 内部签名/防篡改检查

- `LauncherApp.java:65-76` 获取自身旧式签名、计算 SHA-256 并截取前 8 位，但结果被直接丢弃，没有比较、退出或禁用逻辑。
- 调试器和 `debuggable` 检查也只记录日志。
- 未发现 `checkSignatures`、`SigningInfo` 白名单、安装来源校验、完整性失败退出、kill 或禁用逻辑。
- `AdbCrypto` 的 RSA 用于本机 ADB challenge，不是 APK 签名校验。
- 唯一自声明的 signature 权限为 `com.byd.launcher.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`；应用自己声明并使用，换签后仍自洽。
- 外部风险仍包括 `android.permission.BYD_CAMERA`、`MEDIA_CONTENT_CONTROL`、厂商 Binder、隐藏 API 或 OEM 白名单。既有 `zhiui-final-v2.apk` 已用开发证书在实车通过，是换签可运行的重要证据，但不替代本次零修改回归测试。

同一包名不同证书不能直接覆盖安装。若车机当前安装原证书版本，`adb install -r` 会出现签名不兼容；不得自动卸载。若当前安装的是 `zhiui-final-v2.apk`，本测试包使用同一开发证书，可在版本规则允许时覆盖。

## 5. Manifest、权限与组件

### Application 属性

- theme：`Theme.NavDemo`
- icon / roundIcon：标准 mipmap，经 apktool 从混淆路径恢复
- `allowBackup=true`
- `supportsRtl=true`
- `extractNativeLibs=false`
- `requestLegacyExternalStorage=true`
- `networkSecurityConfig=@xml/network_security_config`
- `appComponentFactory=androidx.core.app.CoreComponentFactory`
- 可选 uses-library：`bmmcamera`，`required=false`

### 权限

完整 uses-permission：

- 存储：`WRITE_EXTERNAL_STORAGE`、`READ_EXTERNAL_STORAGE`、`MANAGE_EXTERNAL_STORAGE`
- 定位：`ACCESS_FINE_LOCATION`、`ACCESS_COARSE_LOCATION`、`ACCESS_BACKGROUND_LOCATION`
- 相机：`CAMERA`、`BYD_CAMERA`
- 通知/悬浮：`POST_NOTIFICATIONS`、`SYSTEM_ALERT_WINDOW`
- 前台服务：`FOREGROUND_SERVICE`、`FOREGROUND_SERVICE_MEDIA_PROJECTION`
- 网络：`INTERNET`、`ACCESS_WIFI_STATE`、`ACCESS_NETWORK_STATE`
- 启动/电源：`RECEIVE_BOOT_COMPLETED`、`REQUEST_IGNORE_BATTERY_OPTIMIZATIONS`、`WAKE_LOCK`
- 蓝牙：`BLUETOOTH`、`BLUETOOTH_CONNECT`
- 媒体/设置：`MEDIA_CONTENT_CONTROL`、`WRITE_SETTINGS`
- 自有：`com.byd.launcher.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`

注意：APK 内嵌 BYD SDK 文档列出多种 `BYDAUTO_*_GET/SET/COMMON` 权限，但 Manifest 没有声明这些权限。实际能力依赖车机 OEM framework、ADB shell 身份、服务端策略或白名单，不能从 Manifest 单独推断。

### Manifest 组件

| 类型 | 组件 | exported | 作用/保护 |
|---|---|---:|---|
| Activity | `MainActivity` | true | 主界面；MAIN+LAUNCHER；MAIN+HOME_ONLY+DEFAULT |
| Activity | `AppLauncherActivity` | false | 应用抽屉 |
| Activity | `FilePickerProxyActivity` | false | 车辆图片选择代理 |
| Activity | `LaunchTransitionActivity` | false | 显式包/Activity 启动过渡，疑似备用路径 |
| Activity | `pip.MediaProjectionRequestActivity` | false | MediaProjection 请求，当前实现不完整/备用 |
| Service | `pip.MediaProjectionService` | false | foreground mediaProjection；当前未完成实际投屏链 |
| Service | `NavBarService` | true | AccessibilityService；受 `BIND_ACCESSIBILITY_SERVICE` 保护 |
| Service | `MusicNotificationListener` | true | NotificationListener；受 `BIND_NOTIFICATION_LISTENER_SERVICE` 保护 |
| Receiver | `BootReceiver` | true | BOOT_COMPLETED、SCREEN_ON；无额外 manifest permission |
| Provider | AndroidX `InitializationProvider` | false | authority=`com.byd.launcher.androidx-startup` |
| Receiver | AndroidX `ProfileInstallReceiver` | true | 受 `android.permission.DUMP` 保护 |

Startup Provider meta-data：EmojiCompat、ProcessLifecycle、ProfileInstaller。APK 没有自定义导出 ContentProvider。

`CoreService` 不是 Android Service，也不在 Manifest；它是带 `main()` 的独立 Java 入口，由本机 ADB 以 `app_process` 拉起。

### Launcher / HOME 成为方式

MainActivity 声明两组 Intent filter：

1. `MAIN + LAUNCHER`
2. `MAIN + HOME_ONLY + DEFAULT`

它没有声明标准 `android.intent.category.HOME`，也未找到 RoleManager、PreferredActivity 或实际执行 `cmd package set-home-activity` 的代码。确定存在的补充路径是：

- `BootReceiver` 在 BOOT_COMPLETED 时显式启动 MainActivity。
- `LauncherApp` / `BootReceiver` 在 SCREEN_ON 时恢复 AccessibilityService。
- `NavBarService` 通过 WindowManager 创建上下状态栏、Dock 与功能覆盖层。
- NavBar 自己的“Home”按钮会发送标准 `MAIN + HOME` Intent。

准确结论：该 APK 在比亚迪固件上很可能由厂商 `HOME_ONLY` 识别，并结合开机自启和 Accessibility 覆盖层表现为 Launcher；仅凭 APK 不能认定它注册了标准 AOSP HOME role。既有实车记录显示恢复 `HOME_ONLY` 后可在真实重启时自动成为桌面。

## 6. 程序架构与启动链

```text
LauncherApp
  └─ MainActivity：壁纸、时钟、主容器、权限/后台初始化
       └─ 本机 ADB：启用 Accessibility / appops / 拉起 CoreService

NavBarService (AccessibilityService)
  ├─ WindowManager：StatusBar、Dock、Widget、快捷设置、车控、PIP
  ├─ MusicNotificationListener / MediaSession / BYD Multimedia
  └─ CoreServiceClient → 127.0.0.1:8888 JSON

CoreService (app_process 独立进程，不是 Manifest Service)
  ├─ ActivityThread.systemMain()/package Context
  ├─ BYD*DeviceManager → android.hardware.bydauto.* OEM Framework
  ├─ TCP 8888
  ├─ loopback TCP 8889 触摸服务
  └─ Binder `byd.launcher.touch`
```

### 启动链

1. `LauncherApp.onCreate()` 注册 SCREEN_ON Receiver，做非阻断调试/签名诊断。
2. MainActivity 由桌面图标、厂商 HOME_ONLY 解析或 BootReceiver 显式启动。
3. `MainActivity.onCreate()` 加载 `activity_main.xml`，初始化壁纸、时钟、日期、空调手势指示，并请求存储/悬浮窗能力。
4. 后台初始化连接本机 ADB，执行 appops/secure settings 以恢复无障碍服务；失败时存在 force-stop 自身再重启的兜底。
5. Android 绑定 `NavBarService`，服务创建上下栏和各覆盖层。
6. NavBarService 连接或以 ADB/app_process 启动 CoreService。
7. CoreService 获取系统/包 Context，初始化 BYD managers、JSON/Binder 服务。
8. NavBarService 建立车辆状态/控制 UI 与 CoreServiceClient 的映射。

### 第一方组件职责

| 类/模块 | 职责 |
|---|---|
| `LauncherApp` | Application 初始化、SCREEN_ON 健康恢复、非阻断签名诊断 |
| `MainActivity` | 桌面底层容器、壁纸、时钟、手势和权限引导 |
| `NavBarService` | 主要 UI/业务中心；Accessibility 与 WindowManager overlays |
| `AppLauncherActivity` | 应用发现、6×4 分页抽屉、点击/长按操作 |
| `BootReceiver` | 开机/亮屏启动与无障碍重绑 |
| `MusicNotificationListener` | 通知/MediaSession 歌曲信息、封面和播放状态 |
| `CoreServiceClient` | loopback 8888 JSON IPC、回调、心跳、重连 |
| `CoreService` | OEM vehicle/system API 桥；独立 app_process |
| `C1465vl` | Widget/Card 管理器 |
| `C1295oj` | 车辆控制页 UI 与 CoreService 桥 |
| `C1078ff` | 快捷设置层 |
| `C1266nd` | PIP/VirtualDisplay/触摸转发 |
| `C0952a9` | MediaSession 控制与 metadata |
| `C1342qi` | 转向灯全景摄像头覆盖层 |
| `AbstractC0991c0` | 内置本机 ADB 连接与命令执行 |
| `AbstractC0945a2` | CoreService 进程启动/停止与 ADB 辅助 |

### 应用发现与启动

- `AppLauncherActivity.m121()` 查询 `ACTION_MAIN + CATEGORY_LAUNCHER`，排除自身，保存 label/icon/package/activity；另补 `com.byd.negativescreen` 和 `com.android.browser`。
- 每页 24 项，6 列；缓存有效期约 30 秒。
- 普通点击构造显式 `MAIN + LAUNCHER`、`setClassName(package, activity)`、`FLAG_ACTIVITY_NEW_TASK`，整理 PIP/底栏后启动。
- NavBar 快捷应用优先 `getLaunchIntentForPackage()`，回退查询包内 MAIN Activity。
- 长按菜单含投屏到仪表/中控、恢复/停止投屏、卸载等高影响动作，实车测试不应误触。

### JADX 可信度

- JADX CLI 最终报告 `errors count: 4`，现有控制台没有四个错误到类名的映射。
- 生成树中全局 `Method not decompiled` 约 277 处，第一方 `com.byd.launcher` 直属代码约 19 处；字面 `JADX ERROR` 注释为 CoreService JSON 路由和 NavBar 座椅控制两处。
- 关键失败方法已在 smali 中存在完整实现，包括 CoreService 命令路由、MainActivity 壁纸/多指手势、AppLauncher onCreate、NavBar 按键/Dock/statusbar/媒体/座椅等。
- 修改原则：JADX 用于导航；行为以 `apktool/smali`、Manifest 和资源为准。绝不能复制 JADX 中的 `UnsupportedOperationException` 伪实现。

## 7. UI 技术方案与功能地图

### 技术方案

- 传统 Android View：XML + Java 动态 View 混合。
- 使用 AppCompat/Material、ConstraintLayout、RecyclerView、ViewPager2、GridLayout。
- Data Binding 仅明确用于 `nav_bar.xml` 与 `NavBarBinding*` 的 AC 状态。
- 未发现业务 Compose、WebView、Flutter、React Native、Unity、Cordova、业务 Fragment 或 ViewModel。
- 所谓 Widget 是应用内部 RecyclerView 卡片，不是 Android AppWidget；未发现 AppWidgetHost/AppWidgetManager/RemoteViews。

### 主体层级

```text
MainActivity / activity_main.xml
  ├─ wallpaper_pager
  ├─ clock_widget / main_clock / main_date
  ├─ wind_indicator / temp_indicator
  ├─ pip_container
  ├─ widget_bar_container
  ├─ widget_picker_container
  ├─ quick_settings_container
  ├─ vehicle_control_container
  └─ nav_editor_container

NavBarService / WindowManager
  ├─ status_bar.xml
  └─ nav_bar.xml
```

### 页面映射

| 页面/模块 | Layout | 主要控制器 | Adapter/模型/事件 | 主要资源/说明 |
|---|---|---|---|---|
| 主界面/壁纸/时钟 | `activity_main.xml` | `MainActivity` | `C0963ak` 壁纸；`C1555zj` 视频；`C1047e8` 页回调 | 外置 `/sdcard/launcher/wallpapers`；资产 `1.jpg`；时钟支持拖动 |
| 底部 Dock | `nav_bar.xml` | `NavBarService` + `NavBarBinding*` | 功能映射以 `NavBarService.smali` 为准 | 返回/Home/除霜/温度/四应用槽/风量/AC/循环/应用抽屉 |
| 顶部状态栏 | `status_bar.xml` | `NavBarService` | 通知、媒体、蓝牙、网络、USB/DVR 状态 | 点击通知用隐藏 StatusBar API，失败回退 shell 命令 |
| 应用抽屉 | `activity_app_launcher.xml` | `AppLauncherActivity` | `C1618` 分页、`C1615` item、模型 `C1616` | `item_app_page.xml`、`item_app.xml`；24 项/页、6 列 |
| NavBar 编辑器 | `dialog_navbar_editor.xml` | `NavBarService` | `C1501xb` 功能、`C1431ub` 应用 | 保存 `nav_side_prefs`、`nav_app_prefs` |
| Widget 卡片栏 | `widget_bar.xml` | `C1465vl` | `C1203km` | 自定义卡片，可排序/编辑，保存 `widget_order` |
| Widget 选择器 | `dialog_widget_picker.xml` | `C1465vl` | `C1322pm` 服务卡、`C1274nl/C1620` 应用 | 3 列服务卡、24 项/页应用 |
| 快捷设置 | `quick_settings_panel.xml` | `C1078ff` | 动态 4 列 tile、slider | 含系统项和车辆项；HDC/驾驶相关禁止实车触发 |
| 车辆控制页 | `vehicle_control_panel.xml` | `C1295oj` | `C1248mj`、模型 `C1272nj` | 真实车辆写控；只分析 UI，不触发事件 |
| PIP 双屏 | `pip_dual_display.xml` | `NavBarService`、`C1266nd` | `DualPipLayout`、`PipLeftPanel`、`C1100gd` picker | VirtualDisplay/Surface/触摸转发 |
| 设置 | `dialog_settings.xml` | `C1465vl` | 多个动态监听器，复杂项查 `o/vl.smali` | 基础/Widget/主题/系统/方向盘/TTS/转向摄像头/About |
| 温度/风量提示 | `overlay_temp_indicator.xml`、`overlay_wind_indicator.xml` | `MainActivity` / `NavBarService` | 动态更新 | include 在主界面 |

### Widget viewType 对应

| viewType | 卡片 | Layout |
|---:|---|---|
| 0 | 地图 | `widget_card_map.xml` |
| 1 | 音乐 | `widget_card_music.xml` |
| 2 | 车辆 | `widget_card_vehicle.xml` |
| 3 | 胎压 | `widget_card_tyre.xml` |
| 4 | 设置 | `widget_card_settings.xml` |
| 5 | App 快捷方式 | `widget_card_app.xml` |
| 6 | 行程 | `widget_card_trip.xml` |
| 10 | 原厂桌面 | `widget_card_launcher.xml` |
| 11 | 环境 | `widget_card_environment.xml` |
| 99/default | 添加 | `widget_card_add.xml` |

### 资源统计与主题

- layout：154 个 XML，其中 base `layout` 145；业务布局约 39 个。
- drawable：约 600 个；mipmap 10 个。
- values：111 个目录、209 个 XML；大量来自 Material/AppCompat 多语言依赖。
- 核心业务 XML 大量使用 inline dp/sp/颜色，几乎不依赖统一 `@dimen`/`@style`；整体尺寸修改通常需要同时检查 XML 和动态代码。
- Theme：MainActivity=`Theme.Wallpaper`；AppLauncher=`Theme.AppLauncher`；Application=`Theme.NavDemo`。
- 应用抽屉 slide 动画 550/350ms；zoom/fade 300ms；Widget/QuickSettings/PIP/编辑器另有代码动画。
- `custom_dialog.xml`、`dialog_app_picker.xml` 及若干 item 文件疑似占位/遗留，删除前必须再查资源 ID 和 smali 引用。

### 后续常用修改落点

- 壁纸/时钟：`activity_main.xml` + `MainActivity` + `C0963ak`
- Dock：`nav_bar.xml` + `NavBarBinding*` + `NavBarService`
- 应用抽屉：`activity_app_launcher.xml` + `C1618/C1615`
- 卡片：`widget_card_*.xml` + `C1203km/C1465vl`
- 设置/选择器：`dialog_*.xml` + `C1465vl/NavBarService`
- 任何车辆控制事件：保持不动；UI 调整前先把点击链与 CoreService 命令桥隔离核对

## 8. BYD / DiLink / 车辆适配

### 调用结构

```text
Launcher UI / NavBarService
        ↓ 127.0.0.1:8888 JSON
CoreServiceClient
        ↓
ADB/app_process CoreService
        ↓
com.byd.launcher.manager.BYD*DeviceManager
        ↓
android.hardware.bydauto.* OEM Framework
```

- 未使用公开 Android Automotive `CarPropertyManager`。
- 未发现 socketcan、`/dev/can*`、VehicleHal、`android.car`、直接 ECU/BMS 协议。
- `DiLink/dilink` 精确业务搜索为 0 处；适配以 `BYD`/`bydauto` 命名。
- APK 内携带 45 个 `android.hardware.bydauto.*` 编译 stub，覆盖 20 个子模块；stub 方法本身抛 `RuntimeException("Stub!")`，实车依赖 OEM framework 父加载器中的真实实现。
- 公开类族与 `byd-sdk-reference/sdk_v1.0.5` 高度一致，同时有大量未公开反射方法、事件号和后期扩展。

### BYD Manager 功能与风险

| 模块 | 主要读取 | 主要写入/控制 | 风险 |
|---|---|---|---|
| AC | 开关、循环、除霜、温度、风量/模式、座舱温度 | 启停、温度、风量、循环、除霜 | 中 |
| Bodywork | VIN/车型、低压电池、门/尾门/窗/天窗 | 尾门、车窗、天窗、遮阳帘 | 高；尾门 Critical |
| DoorLock | 门锁状态 | 上锁/解锁 | 高 |
| Charging | 故障、枪连接、容量、功率、剩余时间 | SOC 保电 | 中 |
| Energy | 能量/路面/运行模式 | 驾驶/路面模式、能量回收 | 高 |
| Engine | 发动机/功率/转速/模拟声 | 模拟声来源/开关 | 中 |
| Gearbox | 制动、自动/手动模式、驻车 | 未发现挡位写入 | 读取实现可疑 |
| Instrument | 告警、背光、电池%、行程、室外温度 | 背光、维护/单位、仪表音乐 | 中 |
| Light | AFS、自动灯、日行灯、双闪 | 日行灯、双闪、室内灯 | 中高 |
| PM2.5 / Sensor | PM2.5、座舱温度 | PM2.5 功能；座椅控制在 Setting | 低中 |
| Statistic | 里程、EV/HEV、耗电/油耗、时间、续航 | 未见当前使用写入 | 低 |
| Tyre | 四轮胎压 | 无 | 低 |
| Multimedia | 媒体类型/状态/歌曲 | 媒体控制、写仪表歌曲信息 | 低中 |
| Panorama/Camera | 全景/转向状态 | 切换全景输出、相机预览 | 高 |
| ADAS HDC | HDC 状态 | HDC 开关 | Critical |

CoreService 实际初始化 AC、Tyre、Bodywork、DoorLock、Light、Setting、Charging、Engine、Instrument、Sensor、PM2.5、Gearbox、Statistic、Energy。Multimedia 由 NavBarService 单独初始化。Panorama/Radar/SafetyBelt/Speed/Time 类存在，但未找到 CoreService 实例化；尤其不要把“存在 Speed manager”误认为主界面显示实时车速。

### 只读信息实际显示

- 环境：座舱/室外温度、PM2.5、海拔
- 行程：总里程、EV/HEV 里程、耗电/油耗、行驶时间、续航、电池百分比
- 四轮胎压
- 全部门/后备箱状态
- AC 状态
- 媒体标题、歌手、封面、播放状态

### 原车包、Activity 与 URI

| 功能 | 目标 |
|---|---|
| 空调 | `com.byd.airconditioning/.mainactivity.FullScreenMainActivity` |
| 原车地图 | `com.byd.automap/.activity.StartupActivity`；`bydautomap://launch_do_nothing` |
| Wi-Fi | `com.byd.systemsettings/.wifi.WIFISettings` |
| 蓝牙 | `com.byd.btsetting/.BluetoothManagerDialog` |
| 媒体中心 | `com.byd.mediacenter` |
| 全景影像 | `com.byd.avc` |
| 车辆设置 | `com.byd.carsettings` |
| 原车语音 | `com.byd.autovoice` |
| 车载音频 | `com.byd.aeri.caraudioplayer` |
| 图片/视频 | `com.byd.auto_photo.ImageShowActivity` / `VideoPlayActivity` |
| 负一屏 | `com.byd.negativescreen` |
| 系统桌面 fallback | `com.android.launcher3/.Launcher` |
| 哨兵扩展 | `cc.omycar.magicmanager`、`cc.omycar.magicsentry` |

导航还回退高德车机/手机版和百度车机包。媒体通知支持网易云、酷狗、QQ 音乐、酷我、Luna 和 BYD MediaCenter。

### Provider / Settings / 广播 / 隐藏服务

- 观察 `content://carsettings/global/sys_screen_mode`，并可向 `content://carsettings/global` 写 `sys_screen_mode`，用于原车日/夜屏幕模式。
- `Settings.System`：屏幕亮度/模式。
- `Settings.Secure`：夜间模式、默认输入法；ADB 写无障碍和硬键盘 IME。
- `Settings.Global`：ADB 写 immersive status bar policy。
- 隐藏服务/API：`AutoContainer`、StatusBar、ServiceManager、IInputManager、IPowerManager、WindowManager。
- 未发现 BYD/DiLink 私有广播 Action。主要是标准 BOOT/SCREEN、系统对话框、Wi-Fi/网络/USB/蓝牙、内部 `CAR_MODEL_CHANGED` 和第三方音乐广播。
- 应用自身不读写 BYD system property；唯一 `SystemProperties` 位于 AndroidX DisplayCompat，读取通用 display-size。

### AutoContainer / 全景相机

- 仪表导航使用 `getSystemService("AutoContainer")` 和未公开 `sendInfo` 编号；协议含义不明，只记录不改动。
- 转向相机通过 BYD Panorama `postEvent`、`setPanoOutputState` 和反射 `android.hardware.AVMCamera`；会尝试 `/system/framework/bmmcamera.jar` 与多个 BYD camera 包。
- 该链会主动占用 OEM 全景输出/相机资源，可能和倒车/原车全景竞争，列为高风险；不要实车主动试发。

## 9. 安全风险登记

### Critical：8888 车辆控制服务通配监听且未见鉴权

- 服务端构造 `InetSocketAddress(8888)` 时未指定 loopback，代码语义为所有接口监听。
- 连接处理逐行读取并直接分派 JSON/触摸；未发现 token、HMAC、证书、nonce、来源 IP 白名单或 loopback 检查。
- 应用自己的客户端虽连接 `127.0.0.1:8888`，但服务端没有同样限制。
- 同程序的 8889 触摸端口明确绑定 `127.0.0.1`，进一步说明 8888 的差异不是通用封装行为。
- 8888 路由覆盖约 91 个命令，含门锁、尾门、车窗、空调、驾驶/能量模式、灯光和 HDC 等写控制。

静态代码不能证明车机防火墙后的外部可达性，但设计风险按 Critical 记录。当前不做实车端口探测；使用该 Launcher 时应避免让车机接入不可信 Wi-Fi/LAN。

### Critical：HDC 写控制

CoreService 反射 `android.hardware.bydauto.adas.BYDAutoADASDevice.getHDCState/setHDCState`，并把写操作暴露给快捷设置/8888。HDC 属于陡坡缓降/驾驶辅助，SDK v1.0.5 未公开。永久限定为只分析、不修改、不试发。

### Critical：尾门服务端无可靠 P 挡保护

- UI 层尝试挡位检查，但 CoreService 直接命令路由没有挡位校验。
- `getCurrentGear()` 实际调用 `getGearboxAutoModeType()`，很可能不是 P/R/N/D 当前挡。
- 异常返回 `-1`，而 UI 的 `<=0` 条件可能放行。
- 尾门操作还有多个未公开原始事件和反射 fallback。

不得复制、重构或实车测试此控制链。

### High：本机 ADB/app_process 权限桥

- 应用连接本机 ADB 5555/5037，ADB RSA key 保存在应用 filesDir。
- 用 `CLASSPATH=<APK> app_process ... CoreService` 启动独立进程。
- `CoreContext` 把本地 `enforce*Permission`/URI 检查改为空，但这不能证明能绕过远端 Binder/OEM 服务按 UID/签名的检查。
- BootReceiver 会写 secure settings、切换 Accessibility，最后兜底 force-stop 自身；这是稳定性和系统配置风险点。

### 其他

- `BootReceiver` exported 且无额外权限；显式广播可触发其逻辑，需后续安全加固评估，但零修改阶段不改 Manifest。
- `KeyVault` 声明 HMAC/key 派生 native 方法但没有随包库、也无调用；不能把它误认为 8888 鉴权。
- `network_security_config` 不会保护原始 ServerSocket。
- 换签后外部 OEM 权限仍需实车验证。

## 10. 可重复重建流程

标准流程：

```text
ORIGINAL_BASELINE.apk
  → apktool decode + JADX audit
  → 单项资源/XML/smali 修改
  → apktool build
  → zipalign
  → 项目开发 keystore 签名
  → apksigner + aapt + apkanalyzer 验证
  → 独立版本 APK
  → 用户安全停车状态下实车测试
```

运行方式见 `launcher_project/README.md`。示例：

```powershell
cd D:\apk\launcher_project
.\build.ps1 -OutputName Launcher_V0.1.apk
```

脚本特性：

- 固定 JDK 21、apktool 3.0.2、Build Tools 35.0.0。
- 构建前校验权威基线 SHA-256。
- 默认拒绝覆盖已有工件；`-Force` 只会删除本次输出名对应的三个精确构建文件。
- 密码从临时环境变量或安全输入读取，不写入脚本/公开文档。
- 构建后自动执行 zipalign、apksigner、aapt 检查并输出 SHA-256。

## 11. 零修改重打包验证

当前 `Launcher_Rebuild_Test.apk`：

| 检查 | 结果 |
|---|---|
| apktool decode | 成功 |
| apktool build | 成功；无资源/Manifest/smali 修改 |
| zipalign | exit 0 |
| aapt badging | package/version/SDK/ABI 正常 |
| Manifest 语义对比 | 去除二进制行号后与原包 188 行完全一致，diff=0 |
| DEX | 1 个；`apkanalyzer dex packages --defined-only` exit 0，可解析 `com.byd.launcher` |
| resources | 1,095 个保留 |
| assets | 3 个保留 |
| native libraries | 4 个 arm64-v8a 保留 |
| 签名 | V2/V3 true；开发证书与 `zhiui-final-v2.apk` 相同 |
| 最终文件 | `D:\apk\Launcher_Rebuild_Test.apk` |
| 最终大小 | 30,063,935 bytes |
| 当前 SHA-256 | `FF06F8215156DC6CDA888C699B42FD5706A7E5E44E97227A0340A4EEA24DAAE9` |

预期的重建差异：

- 原包的混淆资源 ZIP 路径被 apktool 规范化，例如图标从短混淆路径恢复为 `res/mipmap-*/ic_launcher.png`。
- DEX 经 baksmali/smali 重汇编，字节大小从 5,861,076 变为 5,993,008，不要求位相同。
- resources.arsc 和 ZIP 排布会变化。
- 签名从原 V2 证书换为项目开发 V2/V3 证书。
- 这些静态变化已验证可解析，但只有实车能确认 OEM framework、资源加载和 ADB 权限链是否等效。

## 12. 实车测试清单与回滚

### 安装前

1. 车辆安全停车，避免测试时操作任何车辆写控制按钮。
2. 保留 `ORIGINAL_BASELINE.apk` 和已验证 `zhiui-final-v2.apk`。
3. 先确认当前已安装 `com.byd.launcher` 的证书；若是原证书，不要直接卸载，先确认设置/权限丢失和恢复方案。
4. 测试期间避免车机连接不可信 Wi-Fi/LAN；不探测 8888、不发送任何端口数据。

### 只测试这些内容

- APK 能安装/解析，无签名或 ABI 错误。
- MainActivity 能启动，壁纸、时钟、日期正常。
- Dock 和状态栏覆盖层出现且无错位/闪烁。
- 应用抽屉能打开，普通应用图标/分页/启动正常；不要长按执行卸载/投屏。
- 屏幕关闭/亮起后服务能恢复。
- Home 键与开机重启后的 HOME_ONLY 行为符合原版。
- 只观察胎压、续航、温度、歌曲等状态是否显示；不要点 AC、HDC、驾驶模式、门锁、尾门、车窗、座椅、灯光或相机控制。
- 保持一段时间，观察是否崩溃、循环 force-stop、无障碍反复重绑或系统栏异常。

### 失败时提供

- 实际表现与截图。
- 安装错误全文。
- 定向 logcat：`AndroidRuntime`、`com.byd.launcher`、`LauncherApp`、`MainActivity`、`NavBarSvc`、`CoreService`、相关 BYD manager。
- 发生阶段：首次启动、Home、亮屏、重启、打开抽屉或读取状态。

### 回滚

- 若车机当前是开发证书谱系，优先重新安装已实车通过的 `zhiui-final-v2.apk`。
- 若涉及原证书版本，先停止操作并确认卸载/恢复步骤；不得自动禁用或删除原车 Launcher/关键应用。
- 未经用户明确授权，不执行 ADB 安装、卸载、清数据、设置默认 HOME、重启或系统配置修改。

## 13. 修改与验证记录

| 日期/版本 | 内容 | 文件 | 构建 | 实车 |
|---|---|---|---|---|
| 原始基线 | 第三方智UI 1.0 | `ORIGINAL_BASELINE.apk` | 原签名有效 | 历史已运行 |
| 既有 final-v2 | 历史整合修改 | `zhiui-final-v2.apk` | 开发签名有效 | 2026-08-18 已通过 |
| Rebuild Test | apktool 零功能修改重建，换开发签名 | `Launcher_Rebuild_Test.apk` | 静态全部通过 | 2026-08-25 T01–T10 通过（T09/T10 用户确认） |
| Rebuild Test 交接 | 确认当前实车为最新版 v2，同签名覆盖/回滚方案完成 | `测试方案.md` | 文件/证书已复核 | 2026-08-25 已执行并回滚 |

## 14. 2026-08-25 零修改重包实车测试记录

- 车机：`trinket for arm64` / Android 10；ADB 端点：`192.168.31.106:5555`；仅发现并使用这一台设备。
- 待测包：`Launcher_Rebuild_Test.apk`；SHA-256：`FF06F8215156DC6CDA888C699B42FD5706A7E5E44E97227A0340A4EEA24DAAE9`。
- T01 覆盖安装：通过；`adb install -r` 输出 `Success`，未执行卸载或清数据。
- T02 显式启动：通过；`com.byd.launcher/.MainActivity` 返回 `Status: ok`，前台任务正常。
- T03 主界面视觉观察：通过；壁纸、时钟、日期、顶部状态图标、Dock 可见，无黑屏/闪退。
- T04 应用抽屉：首次操作无效，原因是误点主界面“+”卡片而非底部导航栏最右下角九宫格程序列表按钮；纠正后真实 `AppLauncherActivity`、6 列两页分页、文件管理器启动和 HOME 返回均通过。
- T05–T08：已完成补测；T09 15 分钟稳定性、T10 正常重启：用户实车确认无问题；本代理未执行 `adb reboot`。
- 车辆安全：未点击或发送车辆写控制；未连接/扫描 8888/8889；未改默认 HOME、系统设置或关键应用状态。
- 回滚：通过；覆盖安装 `zhiui-final-v2.apk` 输出 `Success`，车机端已安装 APK SHA-256 为 `ada7bd1da144470f0a7d8a27d00c435c0146d517f455d9f112ff1dc`，与本地回滚包一致；`MainActivity` 已恢复前台。
- 证据：`D:\apk\Launcher_Rebuild_Test_T02_20260825_202238.png`、`D:\apk\Launcher_Rebuild_Test_T04_apps_20260825_202552.png`、`D:\apk\Launcher_Rebuild_Test_T04_page2_20260825_202635.png`、`D:\apk\Launcher_Rebuild_Test_failure_logcat_20260825_203001.txt`、`D:\apk\Launcher_Rebuild_Test_rollback_v2_20260825_203001.png`。

结论：此前“ T04 普通应用启动失败”结论已撤销，根因是测试入口选错；纠正后的 T04 通过，T09/T10 由用户确认通过，零修改重打包实车回归通过。

### 补测记录（T05–T08）

- T04 纠正复测：底部导航栏右下角九宫格按钮打开真实 `AppLauncherActivity`；6 列两页分页正常；“文件管理器”启动到 `com.byd.filemanager/.view.MainActivity`，标准 HOME 返回 Launcher；随后覆盖回滚 v2 成功。
- T05 Home：通过补测；通过 `com.android.documentsui/.LauncherActivity` 启动普通文件应用，两次标准 HOME 后均回到 `com.byd.launcher/.MainActivity`。
- T06 熄屏/亮屏：通过补测；两轮 ADB 电源键模拟均出现 `Dozing/Display OFF`，亮屏后恢复 `Awake/Display ON` 与 Launcher 前台。
- T07 媒体：未建立有效播放会话；Kuwo 页面可见曲目，但标准媒体键和应用播放键后 Kuwo `PlaybackState` 仍为 `null`，Launcher 媒体卡片保持“等待播放”，无崩溃。
- T08 只读状态：能显示行程、里程、电量、能耗等数据；一次主界面恢复截图显示进入了车辆控制页，画面包含车窗/天窗写控制入口及状态值。未点击这些控件、未发送车控命令；该状态是否与车辆实际物理状态一致，仅凭截图不能判定，列为异常现象。
- T09 稳定性：未完成；监控脚本在启动阶段被用户中断，未形成 15 分钟有效样本。
- T10 正常重启：未执行；未使用 `adb reboot`。
- 补测结束后已覆盖回滚 `zhiui-final-v2.apk`，车机端 SHA-256 与本地回滚包一致，`MainActivity` 恢复前台。

下一版本只能在 Rebuild Test 实车通过后建立，并且一次只改一个主要功能。

## 15. v3 跨应用状态栏修复候选（2026-08-27，未交付）

- 基线：`zhiui-final-v2.apk`（SHA-256 `ADA7BD1DA144470F8C05BD24F0A7D8A27D00C435C0146D517F455D9F112FF1DC`）的独立 apktool 工作树：`launcher_project\diagnostics\zhiui_final_v3_statusbar_fix`。
- 仅改动两个源文件：`res/layout/activity_main.xml` 移除了 MainActivity 内嵌 `status_bar`；`smali/com/byd/launcher/NavBarService.smali` 恢复 `Ϡ(I)V` 的原有 WindowManager 悬浮状态栏路径，并使 `supports_fullscreen` 仅影响底部导航策略。顶部状态栏仍仅由 `statusbar_hidden_packages` 和内置精确黑名单隐藏。
- 在前台应用变化时，悬浮状态栏在 `com.byd.launcher` 为前台时保持透明，其他应用为前台时设为黑色，以覆盖底层 OEM SystemUI 图标；不修改 `policy_control`、Manifest、CoreService 或任何车辆控制代码。
- 本地 apktool 重建和 zipalign 校验通过；未签名对齐候选文件：`launcher_project\build\zhiui-final-v3-statusbar-fix-aligned.apk`，SHA-256 `3B36EEDE32E920099E24D9D02EB621FC67E599F2F376861FA11FF7502A326F3D`。
- `aapt dump badging`：包名仍为 `com.byd.launcher`，minSdk 24、targetSdk 34、ABI `arm64-v8a`。独立源树的递归哈希对比（排除 apktool 临时 `build` 目录）确认仅上述两个文件发生变化。
- 当前未签名、未产生 `D:\apk\zhiui-final-v3-statusbar-fix.apk`、未写入 `D:\output\zhiui\clear`、未执行任何 ADB 或实车操作。须满足项目阶段门禁并通过项目开发证书签名验证后，才可作为实车候选包；本轮按用户要求跳过方案第 9 步实车测试。
- 2026-08-27 装车准备检查：`adb devices -l` 可运行，但没有返回任何已授权设备；因此未执行安装、启动、设置变更、数据清理或任何车辆交互。

## 16. v3 状态栏修复构建记录（2026-08-27）

- 阶段门禁：用户于本轮明确确认零修改重建包实车“测试通过”，因此开始此单项状态栏修复的构建；未合并其它未验证功能，也未执行方案第 9 项实车测试。
- 审计：以 `zhiui-final-v2` 与独立 v3 源树进行递归 SHA-256 对比（排除 apktool 生成目录）后，差异仍只有 `res/layout/activity_main.xml` 与 `smali/com/byd/launcher/NavBarService.smali`。JADX 与 apktool 均复核了 `onAccessibilityEvent` 的全屏/状态栏分支；未修改 Manifest、`CoreService` 或车辆控制代码。
- 强制重编译：apktool 3.0.2 使用 `-f` 成功重建为 `launcher_project\build\zhiui-final-v3-statusbar-fix-unsigned-force-20260827.apk`（29,920,668 bytes）。
- 对齐与解析：生成 `launcher_project\build\zhiui-final-v3-statusbar-fix-unsigned-force-aligned-20260827.apk`（29,935,365 bytes）；`zipalign -c -v 4` 通过，`aapt dump badging` 确认包名 `com.byd.launcher`、启动页 `com.byd.launcher.MainActivity`、minSdk 24、targetSdk 34、ABI 保留 `arm64-v8a`。
- 签名与交付状态：按用户指示，仅在本机签名进程中临时读取既有本地项目日志的两项凭证记录；未在命令输出、回复或新文档中显示口令，进程变量已在签名后清除。已生成 `D:\apk\zhiui-final-v3-statusbar-fix.apk`（30,063,935 bytes，SHA-256 `3FD7013F6A5D451D109B9730DAA89965B14692607347247EF89A6530FE7CEC66`）。`apksigner verify` 通过 V2/V3，`zipalign -c -p 4` 通过，包名/启动页/minSdk/targetSdk/`arm64-v8a` 均正确，且签名证书与 `zhiui-final-v2.apk` 一致。
- 交付限制：v3 仅完成静态验证，尚未实车安装或功能验证；不写入 `D:\output\zhiui\clear`。可作为待测包由用户在安全停车状态下安装；失败时以 `zhiui-final-v2.apk` 覆盖回滚。

### v3 实车首轮结果（2026-08-27）

- 用户确认安全状态并授权后，已通过 ADB `192.168.31.106:5555` 对现有开发证书谱系执行 `adb install -r`；输出 `Success`，未卸载、未清数据、未改默认 HOME、未重启。
- `com.byd.launcher/.MainActivity` 显式启动成功（`Status: ok`，总计 1,223 ms），智UI进程存活。
- 核心跨应用场景通过：普通文件管理器 `com.byd.filemanager/.view.MainActivity` 冷启动成功（728 ms）；截图显示顶部仍保留时间和状态图标区，使用预期深色遮罩，底部导航亦保持。随后标准 `KEYCODE_HOME` 返回 `com.byd.launcher/.MainActivity`，主界面与状态栏正常恢复。证据：`zhiui-v3-home-20260827_214922.png`、`zhiui-v3-filemanager-20260827_214922.png`、`zhiui-v3-home-return-20260827_214922.png`。
- 尝试以标准 `android.settings.SETTINGS` intent 打开系统设置时，该车机报告“unable to resolve”，未进入设置页；这不是 v3 异常，故此附加场景不计入通过/失败。`zhiui-v3-settings-20260827_215037.png` 实际为随后回到的主界面截图。
- 返回桌面后静置 15 秒，定向 logcat 未发现 `FATAL EXCEPTION`、`Process: com.byd.launcher`、`VerifyError`、`InflateException` 或 `WindowManager$BadTokenException`。全程未触达车辆控制入口或系统设置写操作。
- 状态：跨应用状态栏修复的首轮实车核心场景通过，v3 目前保留在车机上供继续观察；尚未完成长期稳定性/重启回归，故暂不移入 `D:\output\zhiui\clear`。回滚包仍为 `zhiui-final-v2.apk`。

## 17. v3.1 动态壁纸状态栏合成修复（2026-08-28，待实车）

- 问题：v3 在桌面前台使用独立 `WindowManager` 状态栏窗口；动态壁纸由 `TextureView + MediaPlayer` 渲染。车机合成器会使这个独立透明窗口覆盖区域保留视频帧，表现为顶部状态栏区域静止、主体壁纸仍动态。
- 仅改动两个文件：`res/layout/activity_main.xml` 恢复桌面内嵌 `@layout/status_bar`；`NavBarService.smali` 在 `com.byd.launcher` 前台时隐藏独立状态栏窗口，在其它前台应用时重新显示该窗口并保持黑色遮罩。独立顶部手势区保持不变，跨应用状态栏与下拉控制栏路径不受此改动影响。
- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_1_wallpaper_statusbar_fix`。与 v3 递归比对（排除 apktool 生成目录）仅有上述两项源修改；未修改 Manifest、CoreService、车辆控制、默认桌面或其它 UI 功能。
- 构建：apktool 3.0.2 强制重编译、`zipalign -c -p 4`、`aapt dump badging` 通过；签名 V2/V3 通过。待测包：`D:\apk\zhiui-final-v3.1-wallpaper-statusbar-fix.apk`（30,063,935 bytes，SHA-256 `C57380C53055CAB9CD21ACFF56F97781CE740941025B1C34D22D41188242BC66`）。
- 实车状态：未安装、未进行 ADB 或车辆交互；不写入 `D:\output\zhiui\clear`。测试失败可覆盖回滚至已验证 `zhiui-final-v2.apk`；若仅需回退本轮状态栏修复，可覆盖已装的 `zhiui-final-v3-statusbar-fix.apk`。

### v3.1 实车结果（2026-08-28）

- 已覆盖安装并显式启动，`adb install -r` 返回 `Success`，`MainActivity` 冷启动 1,412 ms；没有卸载、清数据、默认桌面修改、重启或车辆控制操作。
- 两帧间隔 4 秒的截图显示：顶部状态栏背景平均 RGB 帧差为 `0`，而主体壁纸区域为 `7.52`，证明顶部仍被冻结；因此 v3.1 未通过本项验证，不能交付或归档。
- 定向 logcat 未发现 `FATAL EXCEPTION`、`VerifyError`、`InflateException`、`BadTokenException`；问题是合成表现而非启动崩溃。

## 18. v3.2 动态壁纸状态栏修复（2026-08-28，实车核心场景通过）

- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_2_wallpaper_statusbar_fix`；相对 v3.1 的源码差异只有 `smali/com/byd/launcher/NavBarService.smali`。
- 修复策略：保留跨应用所需的外部状态栏逻辑；桌面前台时清理由外部状态栏产生的 48px 画面层，并让 75px 的下拉触控区不承载状态栏画面。跨应用切换后按原路径重建黑色外部状态栏，返回桌面后销毁。未改 Manifest、默认桌面、CoreService、空调或车辆控制代码。
- 静态验证：apktool 强制重编译、`zipalign -c -p 4`、aapt 启动入口检查及 APK Signature Scheme V2/V3 均通过。包：`D:\apk\zhiui-final-v3.2-wallpaper-statusbar-fix.apk`；SHA-256：`837F67EF80AD09563E4C2C690872BB304F2A775996716B72FEBC229AB91EB313`。
- 实车安装与启动：用户授权后 `adb install -r` 返回 `Success`；`MainActivity` 启动成功，总计 786 ms。未卸载、清数据、修改默认桌面或重启。
- 动态壁纸：首轮两帧分析顶部 160×80 区域有 92.88% 采样点变化；跨应用返回桌面后的复核为 94.38%，顶部平均 RGB 帧差为 15.47。v3.1 同类顶部测试为 0，故确认状态栏区域已随动态壁纸连续刷新。
- 跨应用：文件管理器 `com.byd.filemanager/.view.MainActivity` 冷启动成功（850 ms），外部 48px 状态栏层正常显示；标准 HOME 返回桌面后，该层在窗口日志中销毁，动态壁纸继续刷新。
- 稳定性：定向 logcat 未发现 `FATAL EXCEPTION`、`VerifyError`、`InflateException` 或 `BadTokenException`。未测试下拉面板内的任何车辆写控制功能。
- 交付状态：核心实车测试通过，但尚未完成用户侧长期观察和完整重启回归；按规则不移入 `D:\output\zhiui\clear`。

### v3.2 更正（2026-08-28）

- 用户实际观察确认：v3.2 的动态壁纸状态栏恢复存在“有时正常、有时静止”的不稳定现象。此前的单次帧差采样不足以证明视觉修复，撤销“核心场景通过”的交付性结论。
- 根因：Activity 生命周期中的一次性移除会与无障碍服务的延迟状态栏创建回调竞争，导致 48px 状态栏画面层或 75px 触控层在部分返回桌面的时序下重新出现。

## 19. v3.3 动态壁纸状态栏稳定性修复（2026-08-28，待用户视觉确认）

- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_3_wallpaper_statusbar_stability_fix`；相对 v3.2 仅修改 `smali/com/byd/launcher/NavBarService.smali`。
- 修复：无障碍事件确认 `com.byd.launcher` 为前台时，设置桌面前台标记、再次解绑外部状态栏/触控窗；任何延迟状态栏创建回调在该标记下直接回到 Activity 内嵌状态栏，不会新建悬浮窗。离开桌面时标记清除，保留原有跨应用外部状态栏创建路径。
- 静态验证：强制 apktool 重编译、zipalign、aapt 启动入口与 APK Signature Scheme V2/V3 均通过。包：`D:\apk\zhiui-final-v3.3-wallpaper-statusbar-stability-fix.apk`；SHA-256：`852231B14B7488D9F7A2D69E88DC7579A2590280DB5528E5D074AC5596F2FDBE`。
- 实车：用户授权后覆盖安装成功，`MainActivity` 启动成功（995 ms）。3 轮即时“文件管理器 → HOME”切换，以及另 3 轮返回 HOME 后 300ms、1s、2.5s、6s 的延时检查（共 12 个检查点）中，智UI均处于前台，48px 状态栏悬浮层和 75px 顶部触控悬浮层均未出现。
- 限制：自动截图的壁纸帧差会受当前视频画面内容影响，不能替代用户视觉确认；当前等待用户确认顶部动态壁纸已持续恢复。未操作下拉面板内的任何车辆控制功能，未改 Manifest、默认桌面、CoreService、空调或车辆控制代码。
- 交付状态：未完成用户视觉确认、长期稳定性和正常重启回归；不移入 `D:\output\zhiui\clear`。

## 20. v3.4 网易云歌词官方接入预备（2026-08-28，静态验证前）

- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_4_netease_lyrics_auth_prep`；基于 v3.3，未触及 Manifest、默认桌面、CoreService、空调或车辆控制。
- 接入点：新增 `NeteaseLyricsBridge`，由已有的媒体通知更新链路触发。仅当前台媒体包名是 `com.netease.cloudmusic*` 时更新歌词卡片提示；其他音乐应用不变更。
- 安全边界：本版不内置 AppId、AppSecret、访问/刷新令牌，不复用已安装网易云应用的登录态，不发起任何网络请求。它仅作为官方“设备匿名令牌 → 扫码授权 → 访问令牌 → 歌曲 ID → 歌词”链路的安全占位。
- 待补充条件：需从网易云开发者控制台/接入人员获取本 AppId 已开通的歌词 API 范围、设备 `brand`/签名方案以及用于服务端的密钥管理方案。秘钥不得写入 APK、项目日志或聊天。
- 构建/静态验证：apktool 3.0.2 强制重建、zipalign、aapt 包解析通过；`apksigner verify` 通过 V2/V3。待测包：`D:\apk\zhiui-final-v3.4-netease-lyrics-auth-prep.apk`，SHA-256 `EE6CF1F7F5EDCC28F0BED4EA32E1CE1E5F0DAE1B1A590250F32FDFD76FDA24CF`。
- 实车状态：未安装、未进行 ADB 或车辆交互；未完成官方授权和歌词请求。不移入 `D:\output\zhiui\clear`；回滚仍为已装的 v3.3 或已验证 `zhiui-final-v2.apk`。
- 个人直连模式：用户明确选择不部署服务端。本机秘密配置槽位为 `private\netease-direct.local.properties`（已由 `.gitignore` 排除）；只能在用户自行填写后由构建进程临时读取。PrivateKey 将存在待测 APK 中，严禁分发、上传或写入项目日志/交付目录。

## 21. 网易云车载端参考 APK 静态审计（2026-08-30，不改动智UI）

- 用户提供参考包：`D:\163.apk`，SHA-256 `C8C533E19F4E3F0481BB19FEAF1CE71F2F86A08CE715A49213955D3D9F394121`；包名 `com.netease.cloudmusic.iot`，版本 `6.2.81`。APK 签名校验通过，签名主体显示为网易云音乐。
- 使用独立目录完成 JADX 与 apktool 交叉审计：`launcher_project\diagnostics\netease_iot_6_2_81_jadx`、`launcher_project\diagnostics\netease_iot_6_2_81_apktool`。未修改、重签、安装或提取该 APK 的登录态/密钥。
- 该 APK 内部确实调用官方歌词接口 `https://openapi.music.163.com/openapi/music/basic/song/lyric/get/v2`，但该事实不赋予智UI使用其认证身份的权限；不得复制、读取或复用该 APK 的令牌、密钥或账户态。
- 可行的本地集成路径：应用发布标准 Android `MediaSession`；当前歌曲的 `MEDIA_ID` 与逐行歌词会经 `android.media.metadata.LYRIC` 发布，同时通过自定义会话事件 `wt_music_lyric` 发送。智UI现有的 `C0952a9` 已用通知监听授权读取活动 `MediaController` 和元数据，但回调 `C1521y8` 尚未处理歌词元数据或会话事件。
- 结论：后续可作为单独、无网络、无网易云凭据的功能改动，让歌词卡片仅从当前会话读取歌曲 ID、标题/歌手/封面与已由播放器发布的歌词；须在车机上用该版本网易云实际播放后验证系统是否允许智UI读取该字段。此审计不构成实车验证，也不改变 v3.4 的待测状态。

## 22. v3.5.1 网易云车载端本地歌词读取（2026-08-30，待实车）

- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_5_1_netease_car_mediasession_lyrics`；基于 v3.4 的现有歌词卡片和开关。早期 v3.5 候选只覆盖元数据路径，已保留但被 v3.5.1 取代，未安装、未交付。
- 修改范围仅两个 smali 文件：`com/byd/launcher/NeteaseLyricsBridge.smali` 与 `o/y8.smali`。未改 Manifest、默认桌面、CoreService、空调、车辆控制、权限、壁纸或状态栏逻辑。
- 工作方式：只在当前活动媒体会话包名以 `com.netease.cloudmusic` 开头时读取歌词；优先读取标准元数据键 `android.media.metadata.LYRIC`，同时处理该车载端发布的会话事件 `wt_music_lyric` / `wt_music_lyric_obj`。歌曲切换后显示“等待网易云车载端歌词”，收到非空歌词后更新卡片。
- 安全边界：不请求网络、不读取或写入网易云 AppId/AppSecret/PrivateKey/账户令牌、不复用网易云应用登录态、不发送媒体控制或车辆控制命令。歌词只在运行时显示，不保存至文件或偏好设置。
- 构建/静态验证：apktool 3.0.2 强制重建、zipalign `-c -p 4`、aapt 包解析、APK Signature Scheme V2/V3 均通过；最终 APK 再次 apktool 解码，确认两条回调及歌词键存在；桥接类定向扫描未发现网络地址、AppSecret、PrivateKey 或旧授权标志。
- 待测包：`D:\apk\zhiui-final-v3.5.1-netease-car-mediasession-lyrics.apk`，SHA-256 `88C42AA6933465213F881BEE9BA9740F55D9C5B6B0B58B8C283C863A8662810C`；包名 `com.byd.launcher`，启动页 `com.byd.launcher.MainActivity`，minSdk 24，目标 ABI `arm64-v8a`，开发证书与既有 v2 谱系一致。
- 实车状态：未安装、未做 ADB 或车辆交互，故不移入 `D:\output\zhiui\clear`。待安全停车后，先覆盖安装，再用 `com.netease.cloudmusic.iot` 播放有歌词歌曲，检查歌词随播放推进、暂停/切歌和卡片开关；失败可覆盖回滚至已验证 `zhiui-final-v2.apk`。

### v3.5.1 / v3.5.2 实车测试更正（2026-08-30）

- v3.5.1 已在车机 `192.168.31.106:5555` 覆盖安装；启动网易云并取得歌曲封面、标题、歌手时，`NeteaseLyricsBridge.onTrackChanged` 触发 `NoSuchMethodError`。根因是 v3.4 遗留调用误写为不存在的 `Lo/vl;->Ϗ(Context)`；实际存在的是 `Lo/vl;->Ώ(Context)`。智UI进程退出，系统前台回到 `com.bydmate.app`；v3.5.1 判定启动失败，不得交付。
- v3.5.2 仅修正该一处方法调用，独立工作树为 `launcher_project\diagnostics\zhiui_final_v3_5_2_netease_car_mediasession_lyrics`。apktool 重建、zipalign `-c -p 4` 与签名 V2/V3 验证通过；包：`D:\apk\zhiui-final-v3.5.2-netease-car-mediasession-lyrics.apk`，SHA-256 `AC9B874D8A6A5A49C084302F8E756D26EB9A0CC444277B20ADCA7CDBE6A996B7`。
- v3.5.2 覆盖安装和启动通过。网易云车载端启动成功，媒体音量已按测试要求设为 1；返回智UI后进程保持运行，视觉截图 `D:\apk\zhiui-v3.5.2-lyrics-test-20260830_190300.png` 确认歌词卡片显示当前封面、歌曲名和歌手，且没有崩溃。
- 歌词显示未通过：实测播放期间，车载端 `MediaSession` 未发布 `android.media.metadata.LYRIC`，未出现 `wt_music_lyric` / `wt_music_lyric_obj` 会话事件，网易云日志也未见对应发布调用；卡片因此停留在“等待网易云车载端歌词”。这证明智UI的会话接入和稳定性已通过本轮验证，但当前网易云运行配置没有提供歌词数据，不能宣称歌词功能可用。
- 测试结束后已发送标准媒体暂停键；音量仍为用户指定的 1。未卸载、清数据、改默认桌面、重启、改网易云设置或触及任何车辆控制。v3.5.2 暂保留在车机，但因歌词显示未通过，不移入 `D:\output\zhiui\clear`；如需回滚可覆盖已验证 `zhiui-final-v2.apk`。

## 23. v3.5.3 打开应用时状态栏闪烁修复（2026-08-30，首轮实车通过）

- 问题定位：v3.3 的桌面前台保护只覆盖 `NavBarService.Ϡ(I)V` 这一条延迟创建路径；另一条 `NavBarService.Ϫ()V`“确保重挂”路径仍会在智UI处于前台时，通过 `WindowManager` 重新添加外部状态栏。它与 `MainActivity` 已内嵌的状态栏争夺同一屏幕区域，前后台切换时会造成状态栏闪烁。
- 修改范围：独立工作树 `launcher_project\diagnostics\zhiui_final_v3_5_3_statusbar_flicker_fix`，仅修改 `smali/com/byd/launcher/NavBarService.smali`。`Ϫ()V` 发现 `v33HomeActive` 时，改为复用 Activity 内嵌状态栏并直接返回；离开智UI时标记清除，原有外部状态栏重挂路径不变。未改 Manifest、默认桌面、CoreService、壁纸、歌词、空调或任何车辆控制代码。
- 构建/静态验证：apktool 强制重建、zipalign `-c -p 4`、APK Signature Scheme V2/V3 验证通过；最终 APK 再次 apktool 解码，确认两个桌面前台保护入口均存在。包：`D:\apk\zhiui-final-v3.5.3-statusbar-flicker-fix.apk`，SHA-256 `D6A31810B6B42C889EA8E54567C83D92BEA8730B1C9B22EA834A4AFD3E02D829`。
- 首轮实车测试：通过 ADB `192.168.31.106:5555` 覆盖安装成功；显式启动智UI成功。连续三轮“智UI → 文件管理器 → 返回智UI”切换后，智UI进程持续运行且未检测到本轮 `FATAL EXCEPTION`、`VerifyError` 或 `InflateException`。返回桌面截图 `D:\apk\zhiui-v3.5.3-statusbar-launcher-20260830.png` 显示顶部仅保留一套状态栏画面，无空白或重复叠层。
- 交付状态：本轮核心切换场景通过，但自动截图无法替代用户对动态闪烁的持续肉眼观察；暂不移入 `D:\output\zhiui\clear`。如需回滚，可覆盖已验证 `zhiui-final-v2.apk`。

## 24. v3.6 LRCLIB 独立同步歌词（2026-08-30，待实车）

- 用户已确认改用独立第三方歌词来源。选用 LRCLIB 的公开 HTTPS 接口 `https://lrclib.net/api/search`：不需要 API Key、网易云 AppId/AppSecret 或服务端；请求仅包含当前媒体会话已显示的歌曲标题和歌手，并携带 `ZhiUI/3.6` 客户端标识。对每次歌曲变化最多查询一次，最小请求间隔 800ms；连接和读取超时均为 6 秒。接口失败、无匹配或无同步 LRC 时只在卡片显示“未找到同步歌词”，不会影响 Launcher 启动或媒体播放。
- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_6_lrclib_lyrics`，基于 v3.5.3。改动仅为：替换既有 `NeteaseLyricsBridge` 为通用 LRCLIB 查询/解析桥接（及其内部类），并在 `smali/o/y8.smali` 的只读 `PlaybackState` 回调中传入播放位置与速度。歌词以当前行加前后各一行方式、每 500ms 在主线程刷新；不发送任何媒体控制、车辆控制或系统设置写操作。
- 隐私/边界：不读取网易云歌词私有字段、不使用逆向网易云接口、不抓取 Cookie、登录态、AppSecret、PrivateKey 或账号信息；不落盘缓存歌词。LRCLIB 对中文歌曲的同步歌词覆盖不能保证，因此不能把“有结果”承诺为所有歌曲都可用。
- 构建/静态验证：使用 Android API 29 编译独立桥接类并经 D8 转为 DEX 后嵌回既有 APK；apktool 强制重建、zipalign `-c -p 4`、aapt 包/启动页/ABI 检查、签名 V2/V3 通过。最终 APK 再次由 apktool 和 JADX 反编译，确认 LRCLIB URL、`Lrclib-Client` 标识、同步歌词字段解析及播放时钟回调存在；定向扫描未发现 AppSecret、PrivateKey、`client_secret` 或 `music.163.com`。
- 安装状态：用户授权后已通过 ADB `192.168.31.106:5555` 执行同证书 `adb install -r`，返回 `Success`；`dumpsys package` 确认包仍为 `com.byd.launcher`、versionCode 1、targetSdk 34、现有开发证书谱系。未卸载、清数据、改默认桌面、启动播放器、发送媒体控制或触及车辆控制。歌词功能尚未实车验证，不移入 `D:\output\zhiui\clear`。实车最小测试：安全停车并联网后播放一首标题/歌手明确、有同步歌词的歌曲，返回智UI检查“正在查询”后出现三行滚动歌词；再测试暂停、继续与切歌。失败可覆盖回滚至已验证 `zhiui-final-v2.apk`。

## 25. DD.apk 空调弹层对照审计（2026-08-30，仅分析）

- 参考包：`D:\apk\dd.apk`，SHA-256 `99A1A92D86B9592C86902CC8156F97759CB2A4211309F687E4B663BC160D9BCE`。已在独立目录 `launcher_project\diagnostics\dd_aircon_analysis\apktool` 与 `launcher_project\diagnostics\dd_aircon_analysis\jadx` 完成 apktool 3.0.2 / JADX 1.5.5 交叉审计；未修改、重签、安装或提取 DD APK 的任何内容。
- DD 的 Launcher 内部空调弹层控制器是 `com.dudu.autoui.r0.c.j1`；它以 `j1.e()` 打开、`j1.a()` 关闭，同一入口 `com.dudu.autoui.b0.a()` 具备开关语义。主布局为 `res/layout/nl.xml` / `nm.xml`（左右布局变体），为约 350dp 高的底部半屏弹层：双温度滚轮、1–7 档风量条、AUTO/电源/AC、循环/同步/通风、前后除霜及三种出风方向；背景点击也关闭。DD 仍为长按/特定入口保留启动原厂 `com.byd.airconditioning/.mainactivity.FullScreenMainActivity` 的回退路径。
- 智UI当前空调入口是 `NavBarService.ζ(View)`（JADX 名为 `m221`，smali 以实现为准），直接启动同一原厂 `FullScreenMainActivity`；底栏 `res/layout/nav_bar.xml` 只提供紧凑的温度、风量、AC 和循环控件。`vehicle_control_panel.xml` / `C1295oj` 是独立的车辆/车窗控制页，不是空调弹层，不能作为 DD 式空调页面的直接资源替换目标。
- 方向盘“模式”映射中已有“空调控制”选项；后续实现应将它改为调用独立的“显示/隐藏空调弹层”分支，不能继续仅启动原厂 Activity。该改动会涉及新的专用布局/资源及最小范围 smali 状态机；只使用现有 `CoreServiceClient` 的空调状态读取与既有空调命令桥，不能扩展到 CAN、ECU、动力、制动、转向、ADAS 或其他车辆写控制。
- 本次未触及智UI工作树，未生成 APK。按 `AGENTS.md` 当前阶段门禁，正式 UI/功能改动与实车测试包须在用户明确确认零修改重打包版本已能安装、启动、成为 HOME 并完成基础回归后再开始；届时本项应作为单一主要功能独立版本实施、静态验证并在安全停车状态下最小化实车回归。

## 26. v3.7 DD 风格空调弹层与模式键开关（2026-08-31，待签名/实车）

- 前置门禁：用户已确认零修改重打包版本通过，并指定以已安装的 `zhiui-final-v3.6-lrclib-lyrics.apk` 为基线。基线 SHA-256：`95CDFF2E875FC7ABB05E5FF1A411CBE0355CB7B93B91E1E040E9B13806A49066`；歌词模块保持不变。
- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_7_dd_aircon_popup`。APK 内容仅修改三个文件：`res/layout/vehicle_control_panel.xml`、`smali/com/byd/launcher/AirControlPanel.smali`、`smali/com/byd/launcher/AirControlPanelClickListener.smali`；另附不进 APK 的本机安全签名脚本 `sign-v3.7.ps1`。未改 Manifest、默认桌面、歌词、CoreService、权限或底层车辆控制接口。
- 界面：原有 `AirControlPanel` 实际错误复用了车辆控制样式。本版将其替换为 DD 参考包的 350dp 底部半屏空调面板结构：左右温区、中部风量、AC 电源、内外循环、前除霜和出风方向，并支持关闭按钮和遮罩关闭。功能按钮仍转发至 v3.6 已存在、已审计的空调桥接，未新增 CAN/ECU 或原厂未验证的写命令。
- 模式键：`NavBarService` 的 `ac_popup` 映射和按键 `0x121`、`ModeKeyReceiver` 均已统一调用 `AirControlPanel.show`。该方法改为保留单一 Dialog：未显示时创建并显示，已显示时直接 dismiss；因此模式键、底栏空调入口和原有广播入口均为“再按一次关闭”的开关行为，不会叠加多个弹层。
- DD 中的 AUTO、独立 AC、后除霜、SYNC、通风和副驾独立温区在本版只作为视觉参考，尚未伪造为可点击功能；当前真正可用的仍限于 v3.6 既有桥接已覆盖的 AC 电源、循环、前除霜、主驾温度增减、风量增减及出风方向。若要使其余 DD 控件具备真实功能，必须逐项审计原车接口并单独作为后续功能修改。
- 构建/签名：首次复制工作树携带 apktool 增量缓存，虽生成 `zhiui-final-v3.7-dd-aircon-popup.apk`，但构建日志显示资源/Smali 未重编译，故该缓存候选明确废弃、不得安装。随后用 apktool `--force` 全量重建，zipalign `-c -p 4`、aapt 包/入口/ABI 检查及 apksigner V2/V3 验签均通过。有效待测包：`D:\apk\zhiui-final-v3.7-dd-aircon-popup-r1.apk`，SHA-256 `F06143433851D327CA7DE7FE850A8BF9058A3D70F66485F4A37271D79DBFB9A7`；包名 `com.byd.launcher`、启动页 `com.byd.launcher.MainActivity`、minSdk 24、targetSdk 34、ABI `arm64-v8a`，签名为既有 ZhiUI V2 开发证书。ZIP/DEX 定向检查确认 `AirControlPanel` 含共享 `sDialog`、`isShowing` 和 `dismiss` 调用，资源表包含新的 `vehicle_panel_root` 与空调控件资源。未进行实车安装；不得移入 `D:\output\zhiui\clear`。
- 后续最小实车测试（仅安全停车）：使用项目本地开发证书完成签名后，先覆盖安装并启动智UI；将方向盘模式键映射为“空调控制”，按一次应打开、再按一次应关闭；再检查底栏空调入口、关闭按钮与背景遮罩均可关闭。确认弹层稳定后，再按需逐项测试现有的温度、风量、AC、电源、循环、前除霜和出风方向；失败时可覆盖回滚到已装的 v3.6 歌词版或已验证 `zhiui-final-v2.apk`。

## 27. v3.8 全局隐藏系统状态栏/导航栏（2026-08-31，待实车）

- 基线与工作树：基于有效待测的 v3.7 r1，使用独立目录 `launcher_project\diagnostics\zhiui_final_v3_8_global_system_bars_toggle`。现有“显示原车状态栏/导航栏”是原车栏与智UI自绘栏之间的替代开关，不等同于隐藏系统栏；本版新增独立的总开关，不改变那两条原有设置。
- DD 交叉审计：DD 的“Fullscreen hide navbar”实际命令是 `settings put global policy_control immersive.navigation=*`，关闭时写 `settings put global policy_control null`；其没有“同时全局隐藏系统状态栏和导航栏”的 `immersive.full`/`immersive.status` 实现，状态栏由 DD 的独立悬浮窗口布局接管。智UI本版沿用该全局 `policy_control` 机制，但为满足用户的“双栏同时隐藏”要求使用 `immersive.full=*`。
- 实现：系统设置页复用原来不可见的保留行，显示“隐藏系统状态栏和导航栏（全局）”，默认关闭；使用新偏好 `global_system_bars_hidden`。开启时先读取并保存原 `policy_control` 至 `global_system_bars_previous_policy`，再写 `immersive.full=*`；关闭时恢复保存的原值，未取得原值或原值为 `null` 时才删除该项。这样避免 DD 方式直接覆盖其它沉浸策略。APK 逻辑改动仅为 `res/layout/dialog_settings.xml`、`smali/o/vl.smali`、`smali/o/zk.smali`；另有工作树内签名脚本路径更新，未改 Manifest、歌词、空调、CoreService、默认桌面、权限或任何车辆控制接口。
- 构建/静态验证：全量 apktool `--force` 重建完成；zipalign `-c -p 4`、aapt 包/启动页/ABI 检查、apksigner V2/V3 验签通过。最终 APK：`D:\apk\zhiui-final-v3.8-global-system-bars-toggle-r1.apk`；SHA-256 `D80DB56052D3E83112E27EBB684BD4A270AE452BCC873A0D3E64ED441BEB2D14`；包名 `com.byd.launcher`、启动页 `com.byd.launcher.MainActivity`、minSdk 24、targetSdk 34、ABI `arm64-v8a`，签名为既有 ZhiUI V2 开发证书。ZIP/DEX 检查确认三个新策略字符串；aapt XML tree 确认设置文案已进入最终 APK。
- 风险与实车测试：该项改变的是全局 Android 系统 UI 策略，影响其它应用；默认关闭，未安装且不得移入 `D:\output\zhiui\clear`。仅安全停车时测试：先记录当前 `settings get global policy_control` 值和状态栏/导航栏外观；打开开关，确认智UI自绘栏仍在、系统两栏隐藏，再打开一个普通应用确认全局效果；返回智UI关闭，确认原值和两栏均恢复。若无法回到智UI关闭开关，可通过 ADB 执行 `settings delete global policy_control` 恢复系统默认策略（这会清除该全局策略项）。系统栏重复会因此消失，但智UI自身的窗口重挂/重复层是否稳定仍需本轮实车验证，不能仅凭该开关宣称所有叠层问题均已解决。

### v3.8 r1 安装/启动冒烟测试（2026-08-31）

- 用户授权后，已连接车机 `192.168.31.106:5555`（`trinket_for_arm64`），以同开发证书执行 `adb install -r D:\apk\zhiui-final-v3.8-global-system-bars-toggle-r1.apk`，返回 `Success`。未卸载、清数据、改默认桌面、重启或发送车辆控制。
- `dumpsys package` 确认已安装包仍为 `com.byd.launcher`，versionCode 1、minSdk 24、targetSdk 34、APK Signing Version 3。显式启动 `MainActivity` 后，Activity 已恢复为当前 HOME；进程 PID 13255 的保留 logcat 未见 `FATAL EXCEPTION`、`VerifyError`、`InflateException`、`NoSuchMethodError` 或 `AndroidRuntime`。
- 新开关保持默认关闭，尚未切换全局 `policy_control`，故该次仅为安装/启动冒烟通过，未验证系统栏隐藏、其它应用影响或恢复策略；不移入 `D:\output\zhiui\clear`。待用户在安全停车状态下按本节最小步骤进行可视化验证。

## 28. 返回桌面后被 rapidmode 终止的诊断（2026-08-31，未修改）

- 用户报告每次“返回桌面”后智UI看似崩溃重启。车机 `crash` 缓冲区没有 `com.byd.launcher` 的 Java 崩溃记录；对应系统事件显示智UI UID（10120）显式启动 `com.bydmate.app/.MainActivity`，随后车机的 `rapidmode` 立即执行 `Force stopping com.byd.launcher` / `Killing ... stop com.byd.launcher`。因此这不是 APK 的 `FATAL EXCEPTION`，而是启动原车桌面触发的系统进程终止。
- 静态交叉审计确认：`NavBarService` 的可配置导航快捷按钮会把配置包名交给 `NavBarService.ι(View,String)` 并启动该包；应用列表也可按包名显式启动入口。当前的行为与导航栏中某个“回桌面”快捷项实际指向 `com.bydmate.app` 一致。下一步应在独立版本中将该回桌面路径改为只回到 `com.byd.launcher`，并保留原车桌面入口为明确的独立功能，不在本诊断轮直接修改。
- 同时读取到当前 `settings get global policy_control` 为 `immersive.status=com.byd.launcher`，这是既有“原车导航栏模式”写入的旧状态栏策略，并非 v3.8 新开关的 `immersive.full=*`；新开关没有被开启，不能作为这次终止的原因。

## 29. v3.9 返回智UI桌面修复（2026-08-31，待签名/实车）

- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_9_home_return_fix`，基于当前已安装的 v3.8 r1。仅修改 `smali\com\byd\launcher\NavBarService.smali`：配置型导航快捷项若仍保存原车桌面包名 `com.bydmate.app`，不再启动它，而是以 `NEW_TASK | CLEAR_TOP | SINGLE_TOP` 回到 `com.byd.launcher.MainActivity`。其它包名的快捷启动逻辑保持不变。
- 作用边界：该拦截位于导航栏的按包名快捷启动入口，针对用户所称“返回桌面”路径；应用列表中明确点击原车桌面的入口不通过此方法，仍保留。这样可避免原车桌面启动后触发车机 `rapidmode` 强制终止智UI。
- 静态结果：apktool `--force` 全量重编译成功；对齐后的候选包为 `launcher_project\diagnostics\zhiui_final_v3_9_home_return_fix\build\zhiui-final-v3.9-home-return-fix-r1-aligned.apk`，SHA-256 `DF52ECF80041CD079D435A99D470E8F099BDC6EA647B3D1C12BF327CB857F124`。`zipalign -c -p 4` 通过，aapt 确认包名 `com.byd.launcher`、启动页 `MainActivity`、minSdk 24、targetSdk 34 和 ABI `arm64-v8a`；再次 apktool 回解确认重定向指令已进入 classes.dex。
- 构建/签名：按项目日志中既有的本地开发证书记录完成签名，未在输出中显示或保存口令。最终测试包为 `D:\apk\zhiui-final-v3.9-home-return-fix-r1.apk`，SHA-256 `8E499829FB430B18BEE4752319B0F00F95C8884A6998AEDB84FC7A50966E4C8A`；APK Signature Scheme V2/V3、zipalign 和 aapt 包/启动页/ABI 检查均通过。
- 安装/启动冒烟：用户此前授权的已连接车机 `192.168.31.106:5555` 使用同一开发证书执行 `adb install -r` 返回 `Success`，未卸载、清数据、改默认桌面、重启或发送车辆控制。随后 `com.byd.launcher/.MainActivity` 温启动成功（834 ms），恢复为当前前台，进程 PID 16197 存活。仍需在安全停车状态下完成一次“普通应用 → 触发原有回桌面按钮”的人工回归：预期直接回到智UI，且不出现 `com.bydmate.app` 启动或 `rapidmode` 终止智UI；v3.8 r1 仍可作为同证书覆盖回滚包。

## 30. v3.10 移除桌面时钟、扩展歌词卡（2026-08-31，首轮实车布局通过）

- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_10_lyrics_expanded_no_clock`，基于 v3.9。只修改 `res\layout\activity_main.xml`：保留时钟 ID 供既有初始化逻辑安全访问，但将整张时钟卡设为 `gone`；歌词卡从原时钟顶边（82px）开始，保持原底边，卡高由 393dp 扩至 546dp。封面、歌名和歌手随卡片整体上移，新增的纵向空间全由歌词内容的权重区域使用。
- 字号：`tv_lyrics_content` 由 14sp 调整为 16sp（+2sp）；歌名与歌手字号和歌词/播放逻辑均未修改。
- 构建/签名：全量 apktool `--force` 重建、zipalign 和 APK Signature Scheme V2/V3 验证通过。最终测试包：`D:\apk\zhiui-final-v3.10-lyrics-expanded-no-clock-r1.apk`，SHA-256 `D8B1804CFDFC7DB1F23C2AA6A77EA855FBD478D4C62DD6F2910CD6029C99987F`；包名、启动页、minSdk 24、targetSdk 34 和 arm64 ABI 均已通过 aapt 检查。
- 安装/布局核对：已通过 ADB 覆盖安装到 `192.168.31.106:5555`，返回 `Success`；`MainActivity` 温启动成功（740 ms），前台为智UI、进程 PID 31806 存活。实车截图 `D:\apk\zhiui-v3.10-lyrics-layout-20260831.png` 显示时钟卡已消失，封面/标题上移，歌词区域占用原时钟和音乐卡之间的全部可用纵向空间。截图时无媒体播放，故仍需用户播放一首带同步歌词的歌曲来确认实际多行歌词的视觉节奏；不移入 `D:\output\zhiui\clear`。

## 31. v3.11 歌词卡点击打开选定音乐应用（2026-08-31，首轮实车通过）

- 独立工作树：`launcher_project\diagnostics\zhiui_final_v3_11_lyrics-click-music-app`，基于已实车通过布局的 v3.10。新增 `smali\com\byd\launcher\LyricsCardMusicClickListener.smali`，并在 `MainActivity` 的 `lyrics_card` 初始化完成后绑定点击事件；未改布局、Manifest、默认桌面、歌词读取、空调、系统栏、CoreService、权限或任何车辆控制接口。
- 点击逻辑：不硬编码任意音乐包名。监听器直接读取现有设置 `launcher_prefs/music_app_package`，用 `PackageManager.getLaunchIntentForPackage` 启动用户在“选定的音乐 App”中保存的包名，不再依赖导航服务是否已创建；保存包名为空、应用不存在或启动异常时，才回落至原导航栏音乐入口 `o.cb.onMusicClick(View)` 的既有兜底。
- 构建/静态验证：apktool 3.0.2 使用 `--force` 全量重建成功；最终 APK 再次由 apktool 解码，确认监听器、`setOnClickListener`、读取选定包名及 `getLaunchIntentForPackage` 调用已进入 `classes.dex`。zipalign 校验与 APK Signature Scheme V2/V3 验签通过。最终测试包：`D:\apk\zhiui-final-v3.11-lyrics-click-music-app-r1.apk`，SHA-256 `216432903EDFD70E9F774C6EF9B1379BD3ABC9D80C52E8B7D79386EDE3698710`；签名仍为既有 ZhiUI V2 开发证书。
- 安装/点击验证：已通过 ADB 对车机 `192.168.31.106:5555` 同证书覆盖安装，返回 `Success`；`MainActivity` 温启动成功（656 ms）。在歌词卡可点击区域 `[10,82]–[370,901]` 执行一次点按后，系统前台实际变为 `com.netease.cloudmusic.iot/com.netease.cloudmusic.activity.CloudMusicRNActivity`，与当前已选音乐应用一致。未发现本轮 `FATAL EXCEPTION`、`VerifyError` 或 `NoSuchMethodError`；随后显式返回智UI，冷启动 732 ms、进程 PID 29046 存活。未卸载、清数据、改默认桌面、重启或发送媒体/车辆控制；不移入 `D:\output\zhiui\clear`。

## 32. 稳定性整改 S0/S1 准备（2026-09-04，未构建、未安装）

- 已按 `智UI稳定性整改工作方案.md` 冻结关键参照包并重新核验 SHA-256：`ORIGINAL_BASELINE.apk`、`original.apk` 和 `智UI_V0.4.2.apk` 均为 `93042E48C12ED395E8F5D450BE1285E0397897F685EE95AC4080763B6E6DCCD9`；`Launcher_Rebuild_Test.apk` 为 `FF06F8215156DC6CDA888C699B42FD5706A7E5E44E97227A0340A4EEA24DAAE9`；`zhiui-final-v2.apk` 为 `ADA7BD1DA144470F8C05BD24F0A7D8A27D00C435C0146D517F455D9F112FF1DC`；v3.11 仅作为差异参考，其 SHA-256 为 `216432903EDFD70E9F774C6EF9B1379BD3ABC9D80C52E8B7D79386EDE3698710`。
- 以 `Launcher_Rebuild_Test.apk` 通过 apktool 3.0.2 独立解码到只读参考树 `launcher_project\\diagnostics\\zhiui_stability_s1_rebuild_reference`，再复制至唯一可写工作树 `launcher_project\\diagnostics\\zhiui_stability_s1_systembars`。未覆盖原版树、v2、v3.11、keystore 或任何归档包。
- apktool 与既有基线 JADX 参考已交叉用于 S1 调用链审计。S1 的 `AndroidManifest.xml`、`res/layout/activity_main.xml`、`MainActivity.smali` 和 `NavBarService.smali` 与零修改重打包参考树的对应文件一致；该树不含 v3.11 新增的 `NeteaseLyricsBridge`、`AirControlPanel`、`ModeKeyReceiver` 或歌词卡点击类，因此未带入网络歌词、空调弹窗、导出 Receiver 或歌词跳转逻辑。
- 本阶段唯一目标仍为恢复原始单一系统栏/导航栏所有权模型。尚未改动任何 S1 APK 源文件，尚未构建或签名候选 APK，尚未执行 ADB 安装、重启、清数据、默认 HOME 修改、`policy_control` 写入或车辆控制。
- 新建只读证据目录 `launcher_project\\diagnostics\\stability_capture_20260904_0020`；尚无车机采集文件。首次 ADB 枚举因受限用户目录无法创建 `\.android` 而未连接或读取车机。后续采集需在用户确认安全停车和目标设备后，以项目诊断目录作为 ADB 用户目录执行，只读取日志与系统快照。
- 构建工具已扩展为接受受限的 `-DecodedDir`：默认仍只能构建 `launcher_project\\apktool`，自定义目录必须位于 `launcher_project\\diagnostics` 下；构建调用已明确使用 apktool `--force` 全量重编译。脚本语法检查通过，未改变 APK 内容。
- S1 已完成未签名静态构建：`launcher_project\\diagnostics\\zhiui_stability_s1_systembars\\build\\zhiui-stability-s1-systembars-r1-unsigned.apk`（SHA-256 `1D89C8DD2A77C9F6FCE617B694C885EF054F9282B4CD724D897D9D23347AE6D5`）及 zipalign 后的 `...-aligned.apk`（29,931,269 bytes，SHA-256 `1B6627E3B318A1AE5F746F9C7632BEF16FC33C595781F39161341CE83EF1DE56`）。`zipalign -c -p 4` 与 aapt 包检查通过：包名 `com.byd.launcher`、入口 `MainActivity`、minSdk 24、targetSdk 34、ABI `arm64-v8a`。
- 已将对齐的未签名中间包回解至 `launcher_project\\diagnostics\\zhiui_stability_s1_aligned_redecode`；其 Manifest、主布局、`MainActivity.smali` 和 `NavBarService.smali` 与 S1 源树对应文件一致，且不含 `ModeKeyReceiver`、`NeteaseLyricsBridge` 或 `AirControlPanel`。本轮尚未签名，不能安装或作为候选 APK；不得移入 `D:\\output\\zhiui\\clear`。
- 排除 apktool 生成的 `build` 目录后，零修改参考树与 S1 源树均为 6,702 个文件，路径和文件长度差异为 0；四个 S1 白名单核验点（Manifest、主布局、`MainActivity.smali`、`NavBarService.smali`）SHA-256 逐项一致。此结论仅覆盖源树，不将未签名 APK 中间产物误报为源码改动。
- 已使用项目本地开发证书完成唯一 S1 候选包 `D:\\apk\\zhiui-stability-s1-systembars-r1.apk` 的签名；大小 30,063,935 bytes，SHA-256 `3115734924E1D5C5FF5BFA516CB577394B53228060F4CE492969A38A0B4FF790`。凭据仅在签名进程内存中使用，随后已清除，未写入命令输出、文档或环境。
- 最终静态验证通过：`zipalign -c -p 4` 成功；apksigner 确认 V2/V3 签名有效，签名证书 SHA-256 摘要为 `C2BA875AFBF2EFBBFFF44CB64D4D5E16DD4CB1FEF56E441FC8C3BDE019FDB13C`；aapt 确认 `com.byd.launcher`、`MainActivity`、minSdk 24、targetSdk 34、ABI `arm64-v8a`。最终 APK 已回解至 `launcher_project\\diagnostics\\zhiui_stability_s1_final_redecode`，四个白名单文件与 S1 源树逐项 SHA-256 一致，且仍不含 `ModeKeyReceiver`、`NeteaseLyricsBridge` 或 `AirControlPanel`。
- 结论：S1 为“静态通过、未实车验证”候选，绝不进入 `D:\\output\\zhiui\\clear`。下一步必须由用户在安全停车状态下明确授权后，先采集只读基线，再执行同证书覆盖安装及方案规定的 HOME/应用切换/熄屏亮屏/30 分钟观察和重启回归；回滚包为 `D:\\apk\\zhiui-final-v2.apk`，不卸载、不清数据、不改默认 HOME。

## 33. 修订审计后 S1 补审（2026-09-04，仅静态检查）

- 已按《智UI_原版到V2代码审计.md》的 V2-01～V2-08 重新补审现有 S1；本轮不改 APK 源码、不重建、不安装。新审计文件指出的执行顺序已体现在《智UI稳定性整改工作方案.md》：S2 先处理设置窗口真实关闭和壁纸目录一致性，S3 再处理模式键、旧车控面板契约及 Dialog 生命周期。
- S1 的 `AndroidManifest.xml`、`activity_main.xml`、`vehicle_control_panel.xml`、`MainActivity.smali`、`NavBarService.smali` 与 `audit_original_v2_20260904\\original` 对应文件 SHA-256 一致，且均不同于 V2；未修改的 `o/oj.smali` 也与原版一致，故仍与原版 `vehicle_control_panel` 的 `rv_vehicle_controls`、`vehicle_content`、`btn_edit_controls` 控件契约匹配。
- V2-01：S1 不含 `attachActivitySystemBars` 或 `attachStatusBarToMainActivity` 反射绑定方法；原状态栏创建方法 `NavBarService.Ϡ(int)` 存在。主布局没有 V2 新增的 `status_bar` include。此项为“已回到原版实现，待实车验证”。
- V2-02/04/05/06：S1 不含 `AirControlPanel`、`ModeKeyReceiver`、`WallpaperAutoRotateRunnable`、`WallpaperDirectoryResolver` 或 `WallpaperRotationOptionListener`；Manifest 不含 `ModeKeyReceiver`。因此 S1 未带入 V2 的旧布局覆盖、模式键强拦截、多入口 Dialog 或轮播生命周期路径。此项仅说明 S1 不携带相关新增路径，不否定原版既有功能。
- 现有 `D:\\apk\\zhiui-stability-s1-systembars-r1.apk`（SHA-256 `3115734924E1D5C5FF5BFA516CB577394B53228060F4CE492969A38A0B4FF790`）保持不动，状态仍为“静态通过、未实车验证”。下一工作只能是方案阶段 0 的只读车机基线采集；未经安全停车和用户明确授权，不执行安装、重启、清数据、默认 HOME 修改或车辆控制。

## 33. 原版 → V2 代码补审与交接纠正（2026-09-04，仅静态分析）

- 用户指出先前稳定性方案未充分检查原版到 V2 的代码。本次补齐 `smali/o` 的业务改动、逐方法比较、新增类接入点，以及已修改布局的未修改使用方；新增 `智UI_原版到V2代码审计.md`，同步修订 `智UI稳定性整改工作方案.md` 的差异结论、风险版本边界、阶段 0/S2/S3 和首轮交接步骤。
- 再次核验原版及用户桌面 `智UI_V0.4.2.apk` 的 SHA-256 均为 `93042E48C12ED395E8F5D450BE1285E0397897F685EE95AC4080763B6E6DCCD9`；V2 为 `ADA7BD1DA144470F8C05BD24F0A7D8A27D00C435C0146D517F455D9F112FF1DC`。两份 APK 使用 apktool 3.0.2 重新解码至独立 `launcher_project\diagnostics\audit_original_v2_20260904\original` 与 `v2`，均退出 0；与既有原版/V2 分析树交叉核验，排除 build/dist 后路径和 SHA-256 差异均为 0。JADX 参考用于调用关系理解，精确分支/反射名称/布局契约以 smali/XML 确认为准。
- 全量解码文件差异：原版 6,699、V2 6,708；新增 9、修改 89、删除 0。业务覆盖为 9 个修改文件（MainActivity、NavBarService 与 o/cb、ia、tk、uk、vl、y7、zk）、6 个新增类、18 个既有修改方法及 NavBarService 的 5 个新增方法；另有资源常量类 o/if。63 个资源字节差异中，41 个 PNG 尺寸/像素相同，22 个 XML 变化。CoreService 及 12 个 AndroidX 文件仅默认字段初值省略，未发现方法体变化；assets、native 库未变。Manifest 新增 exported 的 ModeKeyReceiver，未声明发送权限，未新增 uses-permission。
- 状态栏映射纠正（V2-01）：MainActivity 嵌入 status_bar，但 NavBarService 原创建方法 `Ϡ(int)` 入口直接返回；`attachStatusBarToMainActivity` 查找不存在的字段 `螞`（真实静态弱引用字段为 `Λ`），异常被吞并提前退出。其它反射字段名同样不匹配。不能再把此路径描述成已成功绑定；另一个真实字段绑定方法未发现直接调用，主布局也没有 nav_bar include。V3 后续双路径重挂风险与 V2 的绑定失败必须分开记录。
- 布局映射纠正（V2-02）：V2 已将 `vehicle_control_panel.xml` 替换为空调布局，未修改的 o/oj 仍查找并调用被删除的 `rv_vehicle_controls` / `vehicle_content`。进入旧面板打开路径会出现空引用，被外层捕获并记录 VehicleCtrlMgr / inflate failed；这是已确认的页面失败路径，不等于已证实整个进程崩溃。新空调必须使用独立布局，保留原车控/车辆信息契约。
- 窗口/输入问题（V2-03～05）：轮播选项对设置根 View 仅设 GONE，绕过 o/vl 的窗口移除和字段清理，重新打开设置可能遗留隐藏窗口；模式键 keyCode 289 在读取用户开关/映射前被强制拦截；多入口每次 new 空调 Dialog，没有单实例与跨入口去重。V2 风险为叠窗，v3.7 才有静态 sDialog/toggle，不能混写。
- 轮播/媒体问题（V2-06～08）：View.postDelayed 任务未随 Activity 生命周期主动取消，但 run 对已销毁 Activity 会退出，不能写成永久死循环；壁纸目录回落不统一，存在未发现直接接线的旧轮播对话框残留；V2 卡片只更新媒体元数据，不更新歌词正文，空封面未清除旧图。LRCLIB 网络线程与 500ms 刷新是后续 V3 改动，不能归因于 V2。
- 签名/构建/安全状态：本轮未改 APK 业务代码、未重建/重签、未安装或连接车机，也未触发任何车辆控制。第 32 节既有 S1 及全部不可变 APK、密钥、日志与归档均保留。补审不把 S1 或任何 V2 缺陷修复标为已完成；仍需候选补审、用户授权和安全停车实车验证，未验证包不得进入正式交付目录。
- 尚未完成：将上述静态缺陷与用户当前故障日志建立因果关系，以及完整中间版本逐包时间线复核；端点 diff 无法显示加过又撤回的修改。后续实施必须同时阅读主方案和代码审计附件，逐项保留修复、测试与回滚记录。

## 34. 阶段 0 本地准备（2026-09-04，未连接车机）

- 新增 `launcher_project\capture_stability_baseline.ps1`：必须显式提供设备序列号，输出目录强制限定在 `launcher_project\diagnostics`，并为 ADB 使用项目诊断目录内的用户目录。脚本只收集包、HOME、Activity、服务、内存、窗口、无障碍、媒体会话、`policy_control`、进程/线程和现有多缓冲区 logcat；不清空缓冲区。
- 本地语法和路径边界检查通过。静态扫描确认脚本不含安装、卸载、重启、强停、清数据、`settings put/delete` 或输入按键命令；未运行脚本，未连接或读取车机。
- 新增 `launcher_project\diagnostics\S1_实车测试清单.md`，包含先采集、30 分钟 HOME 观察、50 次应用往返、10 次熄屏亮屏、重启、三次资源快照、停止条件及不卸载的 V2 覆盖回滚方式。它只作为后续安全停车实车测试的操作清单，不构成实车授权。

## 35. 稳定性计划改为本地优先（2026-09-05，仅方案审查）

- 用户要求重新检查工作方案，先完成本地能做的代码检查和问题修复，再连接车机检查与修复。新增 [智UI稳定性修复计划_本地优先_20260905.md](智UI稳定性修复计划_本地优先_20260905.md)，旧方案及审计附件保留。本计划调整后续执行顺序，第 32～34 节历史“下一步只能连接车机”的安排不再作为当前排期。
- 新路线：L0 基线/差异/历史证据 → L1 全面本地检查 → L2 单项修复 → L3 本地测试及最终包核验 → 本地总门禁 → V0 车机只读采证 → V1/V2 实车检查和定向修复。一次只改一个主要功能；本地通过的检查点允许作为开发父版本，仍不能作为已验证回滚/交付版本。
- 本次复算七个 APK 哈希：权威基线及两份同字节副本、零修改包、V2、V3.11、既有 S1，均与第 32 节和新计划登记一致；未重新验签、解码、构建或开展完整方法审计。现有 S1 状态仍为静态通过、未实车，不代表轮播、空调或歌词功能已修复。
- 方案扩展方法/API 调用、全部布局使用方、窗口所有权、生命周期、并发取消、主线程阻塞、配置迁移/回滚、Manifest/ABI、构建脚本和累计功能交互检查，逐项定义本地闭环条件与实车依赖；V2-01～08 和 V3 累计风险均纳入。
- 记录冲突：AGENTS.md 第 3 节仍记零修改未实车，第 14/16 节有后续用户确认通过记录，L0 应按包哈希和时间归档核对；本次不改项目规则、不把历史自动采样缺失当成没有用户确认。交付规则的旧包删除要求与 AGENTS.md 保留要求冲突，继续保留全部归档。
- 本地模拟台 README 明确仅为浏览器 mock 且 APK 尚未接入调试广播，不能当作本 APK 测试通过；新计划要求测试实际修改模块并注明环境限制，不连接车辆控制服务。
- APK 信息、组件、页面/布局/类/资源映射、BYD/DiLink 接口及权限均未修改；本轮无新 APK、无新增签名结果、无连接车机或车辆控制。新计划中的修复与测试均为待执行，旧方案/审计正文保持不变。

## 36. 本地整改执行与定时续作（2026-09-05～06，未连接车机）

- 用户已要求按本地优先计划实施，并定时回到本任务继续。执行目录为 `launcher_project\diagnostics\stability_local_20260905_r1`。`baseline_gate.md` 归档第 14/16 节零修改包安装、启动、HOME 与后续用户确认，作为继续本地增量修复的前置证据；未修改 AGENTS.md。
- L0 已完成 22 份 APK 哈希/验签清单与 20 个不同哈希 APK 的独立 apktool 解码；日志无解码警告。全路径/哈希差异、方法候选清单、Android 29 声明级 API 初筛、布局契约候选、根目录 8 份历史日志索引已落盘。原版→V2 为 98 项文件差异，V2→V3.11 为 22 项，零修改→S1 仅 apktool.yml 输入记录变化。所有方法人工复核尚未完成，不能把生成清单当作完整审计通过。
- V3.11 新 JADX 导航输出在执行目录 `jadx_v311`；CLI 退出 3、6 个反编译错误，精确逻辑仍使用 apktool smali/XML。API 初筛的原版继承构造器与高版本 API 告警尚须逐项按运行时解析/调用分支复核，不盲目修第三方代码。
- 新确认 BASE-01：原壁纸全局 Runnable 强持有 Activity，onDestroy 未清理；回调触发方法对 volatile Runnable 连续读取两次。补丁在销毁时只清理属于当前页面的回调、用已有 volatile 销毁标志阻止晚到窗口更新，并只读取一次回调。改动为 MainActivity.onDestroy/ͱ() 和 o/ak.ͳ(Bitmap)，未改变资源、组件、权限或车辆接口。
- BASE-01 r1（`zhiui-stability-local-base01-r1.apk`，SHA-256 `AB618790664E39EADDAC373AEB22D5C584300FAD69FED0995C50B8276A831A85`）虽构建/签名/分支测试通过，但全量核验发现复制脚本误排除了嵌套 `unknown/META-INF/com/android/build/app-metadata.properties`。该包保留为失败检查点，不作为开发父版本或交付。
- 已修复复制规则为只排除根目录临时产物，独立生成 BASE-01 r2：`D:\apk\zhiui-stability-local-base01-r2.apk`，30,063,935 bytes，SHA-256 `D1967F9C3C7BC3380DFBDA8F37B56E768621D96B85E61D2DACABA1E5328E37E1`。V2/V3 签名通过，证书与 V2 一致；最终回解后源树 6702 文件，仅两个白名单业务文件变化，无额外业务差异，Manifest/res/lib/assets 保持基线。详情 `base01_r2_verification.json`。
- BASE-01 六项实际 smali 受限分支语义用例：原版三个预期失败；修改源码和最终 r2 各六项通过。该用例使用系统调用替身，不是 Android ART、实际窗口或实车内存验证。所有候选仍未实车，不进入正式交付目录。
- BASE-02 已通过本地验证：页面销毁调用 ViewPager2.setAdapter(null)，接入已有 Adapter.onDetachedFromRecyclerView/shutdownNow，并取消 Adapter Handler 队列。两个页面回调有/无的销毁分支、重复销毁和六项前序回归通过；最终包仅两个允许文件变化。`zhiui-stability-local-base02-r1.apk` SHA-256 `5C6AEBA4130F81520B3FDDC988130A66EB37F87C08D1D09D4D182583D48D3882`。
- BASE-03 已通过本地验证：仅替换 o/sj.run 的视频壁纸 selector 中提取封面的序列，加入 `com.byd.launcher.stability.VideoThumbnail` 小型自有模块，成功/空帧/读源异常/读帧异常/释放异常/fatal Error/构造失败七项受限 smali 分支用例在源码和最终包通过。异常退出释放已构造的 Retriever，fatal Error 清理后重抛；不改同一混淆类的车辆 IPC 等其他 selector。`zhiui-stability-local-base03-r1.apk` SHA-256 `8BAB75F0A5F722E5C391E2684B5EE6FE4927D7DACB01B1DB06BD5A193D243B56`。回解只增加 switch payload 对齐 nop，已逐指令分类；详见 `base03_r1_verification.json`。
- BASE-04 已通过本地分支/最终差异验证：图片 o/tj 与视频 o/sj 解码结果统一通过 Adapter 的主线程 Handler 发布缓存、缩略图数组及预览，`WallpaperFrameApply` 用弱引用持有 Adapter/View，重新检查销毁标志、当前 Adapter、所选路径及控件绑定。销毁标志改为 volatile；关闭后的 bind/选择/延迟取图直接返回；o/y7.run 拒绝销毁页面的晚到回调。新增 `id/stability_wallpaper_binding=0x7f08032e` 键控标签，保留视频 `video_poster` 普通查找标签；未改既有 ID。源码和最终包各 14 项结果用例、销毁/空数据守卫、8 项前序回归通过；旧版晚到视频回写已复现。`zhiui-stability-local-base04-r1.apk` SHA-256 `4A8893C4163C4FA6F797083C93C72528C85BEAE723FA7376BC97193C559DFE99`；最终回解和 JADX 交叉确认，七个允许文件变化。回解成员排序、无引用标签和资源声明顺序差异已分类，具体记录 `base04_r1_verification.json`。
- BASE-05 新确认：原版 fixedThreadPool(2) 的等待队列无界，快速绑定可积压解码对象。自有可编译 Java 模块 `launcher_project/stability_modules/src/com/byd/launcher/stability/WallpaperExecutor.java` 保留两个解码线程，等待队列限四个，满时丢弃最旧等待任务，不在 UI 线程执行解码；晚到提交在关闭后被丢弃。真实 JVM 测试已复现原队列积压，并验证 10,000 次提交保留最新四项、关闭清队列/中断工作线程及关闭后提交。模块已通过 javac Java 8、D8 min-api 24 编译，使用两条目非安装容器经 apktool 转成 smali，只在 Adapter 构造器接入；候选构建/最终验证继续中。容器仅供 DEX 检查，不能安装到设备。
- 各候选签名使用与 V2 相同开发证书，V2/V3 签名及 zipalign 通过。Manifest、SDK/组件/权限、native、既有车辆调用与正式交付目录未改变。受限 smali 测试不是 ART；真实 JVM 队列测试也不证明 Android native 解码会及时响应中断，真实线程/内存与视频渲染留到总本地门禁之后实车验证。完整 V2/V3 功能仍待逐项修复回引，不能将当前基线检查点称为全功能稳定版。完整功能矩阵见 `feature_matrix.md`，台账见 `issues.csv`。

## 37. 本地队列补丁完成与审计更正（2026-09-06，未实车）

- BASE-05 r1 已完成最终包验证：`D:\apk\zhiui-stability-local-base05-r1.apk`，SHA-256 `8A08A96173EF690B3DD6872EDE0690F4B4300ACB781938ECC3F102C48BD7101A`。本次两项文件变化，源码 Java、D8、smali 与最终 APK/JADX 一致；Android 29 声明初筛无相对基线新增项。
- 随后发现限制解码等待队列仍不足以限制 UI 结果积压，因此独立增加 BASE-07 r1（BASE-06 留给系统策略待修项）：`D:\apk\zhiui-stability-local-base07-r1.apk`，SHA-256 `870DAFC1EEC7ACA7A319FCF9067389A58BC94BB352DA58514A890ED6941386E9`。仅改变 WallpaperFrameApply 的投递调用并增加编译生成的 WallpaperDelivery/Pending 两类。后台等待自己的结果完成，UI 调用直接执行，回调 finally 解除等待，销毁中断后撤销投递并恢复中断状态；每个 Adapter 至多两个待发布结果、四个等待解码任务。
- BASE-07 自有模块真实 JVM 并发用例通过：10,000 次提交且暂停/恢复 UI、清队列后销毁、拒绝投递、投递前/中中断、异常回调和 UI 直接调用。Handler/Looper 为测试替身，不打入 DEX。源码和最终包各十四项结果分支、生命周期/空数据守卫及前序回归通过；全量构建、同证书 V2/V3 验签、zipalign、aapt/apkanalyzer、apktool 最终回解与 JADX 交叉核对通过。
- 累计相对零修改源树十二项文件变化全部可归属；原 XML 资源声明完整保留，o/sj 共享类中其他 selector 字节未变，二十二个保护 APK 哈希未变。最终 Android 29 声明初筛仍为原版一百二十七条候选，没有新增告警；完整 ART/可达性和库调用方审计尚未完成。证据 `base07_r1_verification.json`、`base07_r1_cumulative_content.json`、`base07_r1_cumulative_signature_check.json`。
- **更正早前“基线分支没有全局策略写入”的表述：**原版自己就在 o/ea、o/lII、o/llI、o/y9、o/zk 中包含写入/清空 policy_control 的路径，经 o/c0.execAdbCmd 执行；o/c0.ͳ 中的过滤仅为日志过滤。当前 BASE-07 仍继承这些路径，登记 BASE-06 为待修 P0，按 L11 隔离写入、处理 UI/偏好与只读残留检测，不能只屏蔽命令后继续报成功；本轮没有执行这些命令，也未读取设备策略值。
- API 包装方法已补齐三十七项、四十一个直接调用方法索引 `api_wrapper_callers.json`。MainActivity 窗口与 PiP Surface 两项确认在 SDK>=30 分支才调用，不在 Android29 执行；其余库的 factory/guard 链继续复核，不按 API 关键词盲修。
- 当前进度汇总：`launcher_project\diagnostics\stability_local_20260905_r1\本地整改进度.md`。BASE-01 r2/02/03/04/05/07 是本地单项检查点；V2/V3 完整功能修复、系统策略隔离、全部方法审计、组合/配置兼容与总本地门禁尚未完成，继续本地工作，未连接车机、未进入正式交付目录。

## 38. BASE-06 主线全局策略隔离完成（2026-09-07 归档，未实车）

- 当前开发检查点 `D:/apk/zhiui-stability-local-base06-r1.apk`，SHA-256 `C25FC761A71348018418AEFBA371FC480CD0766C3759D3D66858D40C5696F402`，父版本 BASE-07 r1。全量构建、zipalign、同开发证书 V2/V3 验签、aapt/apkanalyzer、最终 apktool 回解与自有模块 JADX 交叉核对完成。
- 原版实际 producer 中两种 policy_control 写命令在 o/c0 的两个执行入口被识别并提前返回；其他命令入口保持原行为。o/zk 的原版系统栏两个 selector 停用；o/vl 设置界面绑定后将两个开关设为只读，保留原偏好和选中状态，读取并显示当前系统策略残留/不可读状态。五条误导性的设置成功日志已纠正。没有执行设备命令或自动清除系统原值。
- 新增可编译模块 `launcher_project/stability_modules/src/com/byd/launcher/stability/PolicyControlReadOnly.java`。Java 测试覆盖实际 producer 命令、只读 UI 重复绑定、错误类型/缺失控件和读取拒绝；实际最终 smali 验证两个命令守卫及其他八个设置 selector。识别器针对已核实的结构化命令，不是任意 shell 的通用沙箱；后续功能回引须重新审计 producer，V2 的新增歌词 selector 不能照搬原版 default 守卫。
- 七个允许文件变化全部可归属，累计十九个文件，原资源声明、共享类其他 selector 与二十二个保护 APK 哈希保持。Android29 声明级候选仍为一百二十七条，无新增项；全部 API 可达性和 ART 验证未完成。证据 `base06_r1_verification.json`、`base06_r1_cumulative_content.json`、`base06_r1_cumulative_signature_check.json`、`base06_r1_gate_tests_final.json`。
- 主线已隔离上述已知自动写入；可选可写分支、真实系统残留值与精确恢复、V2/V3 功能修复回引和完整本地门禁仍未完成。Manifest、权限、资源、native 和车辆接口没有本次新增变化，未连接车机或进入正式交付目录。


## 39. BASE-08 状态栏失败回滚与重试所有权（2026-09-07，未实车）

- 独立候选 `D:/apk/zhiui-stability-local-base08-r1.apk`，SHA-256 `CDBEED98DA6D06B9EDE0FD9864C469E2F20A68A3E5C344996BDD0E8C9ACAFD03`，父版本 BASE-06 r1。它继续包含此前壁纸队列/回调和主线系统策略隔离补丁，仍不是 V2/V3 全功能交付版。
- 原 `NavBarService.Ϡ(int)` 在 WindowManager.addView 成功后若初始化失败，仅将状态栏字段置空；实际指令测试复现已挂载根 View 丢失。现入口拒绝销毁服务、统一捕获创建过程异常并清理自己拥有的状态栏/手势层和监听。移除失败时保留引用并推迟重建，晚到状态刷新不再重挂失败或已销毁服务的窗口；已有附着或已设置 parent 的窗口直接复用。
- 同时复现原创建代码会反复替换快捷设置控制器并再次投递预热。现控制器由同一 Service 复用；本次不将普通关闭方法误作完整销毁。BASE-09 单独继续审计控制器永久销毁、延迟回调和异常隔离。
- 新增可维护 Java `StatusBarResources.java`，逐项处理窗口移除、Handler 回调取消、广播/网络监听注销；未注销成功的引用保留供下一次重试。窗口是否已完成首帧附着不能替代 WindowManager 的注册状态；已核对本地 Android29 WindowManagerGlobal 第 420/480/514 行。平台厂商实现仍需后续实测。
- Java 模块 44 项断言通过；实际源码和最终 smali 各 20 项分支测试覆盖六种资源清理失败/重试、已挂载/待附着窗口复用、销毁/晚到刷新守卫、初始化异常回滚及控制器唯一预热。异常阶段以外部调用替身注入，并非实际 Android inflate 或 WindowManager 故障注入。继承的 14 项壁纸结果、生命周期/空数据、8 项前序回归及策略入口/设置分支通过。
- 全量构建、zipalign、同开发证书 V2/V3 验签、aapt/apkanalyzer 和最终 apktool 回解通过。本次两文件变化，服务 119 个其他既有方法保持原方法体；累计 21 个文件均可归属，原资源声明与共享类其他 selector 保留，22 份保护 APK 哈希不变，Android29 声明级候选仍为 127 项且无新增。
- JADX 自有模块退出 0；父包和候选服务均退出 3，各有一处相同旧 ImageButton/String 方法的 RegionMakerVisitor 错误。详细导航可显示新创建/释放流程，但部分 Java 不完整；精确行为以已通过对照的 smali 为准，不把反编译受限当作 ART 通过。证据 `base08_r1_manual_audit.json`、`base08_r1_branch_tests_final.json`、`base08_r1_verification.json`、`base08_r1_cumulative_content.json`、`base08_r1_cumulative_signature_check.json`。
- APK 组件、权限、原布局、车辆接口和 native 未改变。没有连接、安装或操作车机，未进入正式交付目录。回滚参照仍为保留的已验证 V2 和原车桌面；完整本地门禁后，需安全停车验证状态栏开闭、应用往返、服务重建、窗口数量及日志，不操作底层车辆控制。


### BASE-09 后续审计证据（2026-09-07）

`stability_audit_quicksettings_lifecycle_20260907.py` 在 BASE-08 源码和最终回解分别执行实际 Lo/ie selector 4 → ff.ͻ() → selector 0 分支：即使 ff.ͺ/ͷ 已为 false、旧面板与预热 View 为空，仍会重新投递并到达 ContextThemeWrapper/布局创建边界。未运行 Android 构造、inflate、车辆命令或完整 onDestroy，也没有实际等待 500ms；延迟值来自原 close 方法指令。证据 `base09_lifecycle_audit.json`。

已索引 31 个直接持有或经 Object 转换为 ff 的候选类；这不是 31 个确认缺陷，也不代表全部方法需要修改。下一步检查永久销毁与普通关闭分离、两条 Handler 队列、预热/已打开/嵌入根 View、动画与监听注销、后台工作晚到结果和共享 selector，完成后再选定小范围补丁。BASE-08 不包含该后续修复。



## 40. BASE-09 快捷设置永久销毁（2026-09-08，未实车）

- 当前本地检查点 `D:/apk/zhiui-stability-local-base09-r3.apk`，SHA-256 `013C7166EBDD649EC60C9465A60710F6DB11459745781C0D3C200FF5355B4327`，父版本 BASE-08 r1。r1/r2 是保留的中间候选，r3 补齐服务侧入口、嵌套监听和全局布局注册所有权。
- 服务退出改用独立永久销毁：先标记控制器/编辑器停止，再分别清理两条 Handler 队列、观察者、广播、编辑窗口、活动/预热根 View、动画回调和列表；失败资源保留引用，后续项目继续清理，允许重试。普通关闭及存活时原功能方法体保留。
- 60 处入口守卫识别实际捕获的控制器/编辑器或已销毁服务；共享 selector 在精确去除新增守卫后，原方法体保持。全局布局监听记录注册时 observer，同时检查 View 当前 observer，覆盖平台附着时监听合并；旧监听不能清空新监听引用，移除失败不继续堆叠注册。
- 自有 Java QuickSettingsResources 43 项 JVM 断言通过；源码和最终包各 60 个入口、多种捕获状态与 15 项资源失败/重试/服务继续清理/布局注册分支通过。继承壁纸 14 项、生命周期与前序回归、策略守卫、状态栏 20 项分支通过。测试使用隔离 Android 调用替身，不是 ART 或真实窗口验证。
- 全量构建、同开发证书 V2/V3 验签、zipalign、aapt/apkanalyzer、最终 apktool 回解通过。本次 38 文件、累计 57 文件均可归属；原资源声明和 22 份保护 APK 哈希不变；Android29 声明候选仍为 127，无新增项。最终比对器补充仅合并相邻同地址标签，四项回归确认不会忽略间隔指令、条件或常量变化，旧比对器保留。
- JADX 控制器导航完整输出；父包与候选退出 3。候选 DEBUG 日志明确错误来自既有 NavBarService.Ε(ImageButton,String)，不是 ff 新方法。自有模块 JADX 退出 0，但 disposePanel 有反编译警告/指令转储，已与维护源码及最终 smali 对照；不能将退出 0 当成所有伪源码可靠。模块早期两次 D8 classpath 输入失败日志保留，r4 使用依赖 JAR 编译通过，测试替身未打入 DEX。
- 证据：`base09_r3_verification.json`、`base09_r3_branch_tests_final.json`、`base09_r3_inherited_regressions.json`、`base09_r3_cumulative_content.json`、`base09_r3_cumulative_signature_check.json`、`base09_r3_verifier_regressions.json`、`modules/quick_resources_r4/jvm_tests.txt`。
- 后续 BASE-10：已开始的后台读取仍可在销毁清队列后投递仅持有 View 的 be/pe 回调；直接 new Thread、8 秒轮询派生工作、300ms 等待忽略中断及打开代次校验继续修复。BASE-09 不表示取消已发送请求或中断厂商 native。
- APK 组件/权限/native/原布局无本次变化，未连接车机、未安装、未进入正式交付目录。全部本地可做项和 V2/V3 修复回引尚未完成；回滚参照仍保留已验证 V2 和原车桌面。


## 41. BASE-10 r1 永久销毁后的队列投递保护（2026-09-08，未实车）

- 新检查点 `D:/apk/zhiui-stability-local-base10-r1.apk`，SHA-256 `C6CA9333B78DD6B6FC3F9857945F1F3C0111EA8B2DEC500FC9DC695FA18E3F6B`，父版本 BASE-09 r3。BASE-10 整项仍未完成；本次只关闭销毁后的晚到 UI 队列缺口。
- 已核实 Lo/je 读取后投递 Lo/be（只有 SeekBar/TextView）、Lo/x9 处理背景后投递 Lo/pe（只有 View）。工作线程若已经通过 BASE-09 入口检查，仍可在销毁清队列后提交它们，单独控制器入口守卫无法拦住这些结果。
- 增加可维护 Java `QuickSettingsHandler.java`，将 ff 构造器的两条 Handler 换为绑定同一控制器的主线程 Handler；原 Handler 字段类型与其他 ff 方法保持。投递前检查永久销毁/所属 Service 销毁；平台入队后再次检查并清理本队列，覆盖清队列先于晚到入队的竞态。主线程 dispatch 再检查，拦截仅持有 View 或已经出队的旧消息。
- 本地 Android29 Handler 第98/669/695/718行已核对：普通 post/postDelayed 调用可覆盖的 sendMessageAtTime；front-of-queue 是 final 且绕过投递覆盖，但仍经过 dispatch 守卫。清理只针对当前 Handler，不移除其他控制器/Service 的队列。此保证依赖 Service 销毁与 UI dispatch 在主线程顺序执行；不声称中断已执行的回调或 native。
- 25 项真实 JVM 断言通过：普通/延迟/拒绝投递、停止控制器/停止服务、出队/队首消息、所有者隔离，以及真实后台线程暂停在检查后、销毁清队列后继续入队的竞态；原 Handler 的晚到回调已复现。Android Handler/Looper 是隔离替身，实际生产类使用 Android29 jar 编译；编译期 lifetime API 替身没有打包。源码和最终 smali 各 6 项队列分支，调用真实 smali lifetime 检查，并继承 60 个入口及 15 项清理/布局分支，全部通过。
- javac/D8、全量构建、V2/V3 同证书验签、zipalign、aapt/apkanalyzer、apktool 成品回解及 JADX 模块交叉核对通过；本次两个文件变化，累计 58 文件，22 个保护 APK 哈希不变，原资源声明保持。Android29 声明级候选仍为127，无新增。第一次累计 API 检查早于成品核验完成，被检查器依赖门禁拒绝；顺序重跑后通过，无需更改产品代码。
- 证据 `base10_r1_verification.json`、`base10_r1_branch_tests_final.json`、`base10_r1_cumulative_content.json`、`base10_r1_cumulative_signature_check.json`、`modules/quick_handler_r1/jvm_tests.txt`、`base10_worker_audit.json`。后者索引27个候选方法，不是27个已确认缺陷。
- 后续明确范围：只读工作并发上限/重复任务合并、面板打开代次、300ms等待的中断处理，以及绕过控制器队列的结果。特别是 ie selector6 系统主题查询后，直接在后台写 Launcher 偏好并通过全局 O0 调用 Service.Ύ(Z)，后者继续刷新服务/桌面窗口；需转回所属控制器主线程并校验服务身份，不能把旧查询结果应用到新服务。用户操作分支与只读查询分支必须逐项区分，不能统一丢弃为过期读取。
- 未连接车机、未安装、未执行 IPC/车辆命令、未进入正式交付目录。完整本地门禁和 V2/V3 功能回引仍未完成；保留全部旧包，实车回滚参照仍为已验证 V2 与原车桌面。


## 42. BASE-10 r2 主题读取结果返回所属主线程（2026-09-08，未实车）

- 当前本地检查点 `D:/apk/zhiui-stability-local-base10-r2.apk`，SHA-256 `EF61C11436EDB43E4AF914D041016B3985453EFC6A0B1B94D9726A73AD3C03E8`，父版本 BASE-10 r1。r1 队列保护继续保留，r2 增加系统主题结果的主线程投递与服务身份检查；BASE-10 的线程上限/代次/中断仍未完成。
- 原 ff.Ύ 创建 QSSyncTheme 后进入 ie selector6，查询系统主题后直接写 Launcher 偏好，并经全局 NavBarService.O0 调用 Ύ(Z) 更新服务/桌面窗口。实际旧指令测试已复现：旧控制器 Context 的结果会写旧 Context 偏好，却刷新替换后的新 Service。唯一 ff 分配点是状态栏创建方法，传入的 Context 已逐寄存器确认就是所属 Service。
- 只替换 selector6 中的发布段：保留查询、系统主题映射、Cursor 成功/异常关闭；新增 QuickSettingsThemeApply 投递到该 ff 的主线程 Handler。执行时先检查永久销毁、Context 类型及其与当前 O0 的同一对象身份，再核对查询后观察到的主题偏好仍未变化，才更新偏好与所属 Service。原 07:00～19:00 自动浅色时段和 0/1 固定模式语义保留。
- 新 UI 发布捕获 Exception 并记录，保留原查询调用原本的异常隔离，避免将此前工作线程的可恢复错误直接变为主线程崩溃。没有把系统查询搬到 UI 线程。偏好值校验不是查询代次，无法识别同一服务内 A→B→A 的变化，后续继续处理。
- 源码和成品各 19 项实际 smali 分支通过：固定/自动主题边界、销毁/替换/缺失 Service、非 Service Context、偏好变化、非法模式、偏好/Calendar/窗口异常及只投递不在后台写入。继承两条所属队列的6项分支和 BASE-09 的60入口/15清理分支通过。测试逐条执行实际指令，外部偏好/窗口/队列为隔离替身，不是 Android ART 或真实车机。
- 两个允许文件变化、累计59个文件均可归属；所有其他 ie selector 和原查询/Cursor 路径经过精确恢复比对。全量重建、zipalign、同开发证书V2/V3验签、aapt/apkanalyzer、最终apktool回解通过；22份保护APK哈希不变，原资源声明保留，Android29声明级候选仍127且无新增。JADX新helper输出与smali一致；DEBUG日志只有既有 NavBarService.Ε(ImageButton,String) RegionMakerVisitor 错误，未隐瞒非零退出。
- 证据：`base10_r2_verification.json`、`base10_r2_branch_tests_final.json`、`base10_r2_manual_audit.json`、`base10_r2_theme_manifest.json`、`base10_r2_cumulative_content.json`、`base10_r2_cumulative_signature_check.json`、`logs/base10_r2_jadx_theme_debug.txt`。
- 下一步继续只读工作并发限制、重复查询/面板代次、等待中断及其他后台回调调用方审计，然后完成 V2/V3 功能修复回引和总本地门禁。未连接车机、未安装、未执行外部/车辆命令，未进入正式交付目录；原包、V2及全部旧检查点保留。


### BASE-10 后续只读线程池模块（2026-09-08，尚未接入 APK）

新增可维护 `QuickSettingsReadExecutor.java`，Java8/Android29 编译、D8 min24、仅三项自有类的 apktool 回解和 JVM 10,000 次提交/并发、队列替换、所有者取消、销毁、异常及拒绝测试通过。设计为进程内共用2个工作线程、8个等待读取；同一控制器同一类别只替换仍在队列的旧读取，取消时只移除该所有者等待项。已运行任务最多受全局2线程限制，取消等待项不等于中断native或已发送请求。

这是独立模块验证结果，尚未改动当前 BASE-10 r2 APK，也不能据此宣布 Launcher 所有读取已限流。下一步逐个核对读取 producer/selector，接入取消和实际调用点，再完成成品校验；用户操作分支不能按过期状态读取统一丢弃，面板/查询代次仍待修。当前本地检查点仍是 BASE-10 r2，证据 `base10_read_executor_module.json` 与 `modules/quick_read_executor_r1/`。未连接车机。


## 43. BASE-10 r3 七处读取接入有界线程池（2026-09-08，未实车）

当前检查点 `D:/apk/zhiui-stability-local-base10-r3.apk`，SHA-256 `A88184A1659BE4FD5191FFEA8012EEB88BF7EAF4EA314A5E2350CE2FD61BAA30`，父版本 BASE-10 r2。独立模块已正式接入七处读取：仪表亮度刷新/初始化、导航音量初始化/轮询、SOC目标初始化/刷新和系统主题查询。运行中的这些读取进程内共用2个线程，等待队列上限8；同一所有者/类别替换仍在等待的旧读取，满时丢弃最早等待的读取。控制器先标记停止，再清除属于自己的等待项；不会打断已发送请求或强制中断native。

已有 Java 模块的10,000次提交、所有者隔离、销毁/队列替换/异常用例通过。源码与成品实际指令测试确认七个原Runnable及参数保持，提交key/所属控制器正确，停止后取消与重复销毁有效，继承主题19项、队列6项和60入口/15清理分支通过。测试替身不进入DEX，不是ART。第一版接线测试脚本误将三值fixture拆成两值，修正测试解包后通过，产品代码未因此修改。

五个允许文件变化（ff、ie及3个编译模块类），累计62文件均可归属；原查询方法、用户操作和其他selector完整保留。全量构建、zipalign、同证书V2/V3签名、aapt/apkanalyzer、最终回解/JADX模块核对通过；22保护APK哈希未变，Android29声明级127候选无新增。证据 `base10_r3_verification.json`、`base10_r3_branch_tests_final.json`、`base10_r3_manual_audit.json`、`base10_r3_cumulative_content.json`、`base10_r3_cumulative_signature_check.json`。

BASE-10仍未全部完成：磁贴刷新两处后台producer已完成getter分类（`base10_tile_read_audit.json`），准备接入；背景玻璃处理、面板/查询代次、A-B-A偏好变化和中断仍待修。之前“线程池模块尚未接入”是r3以前的历史状态，不适用于上述七处。未连接车机，当前不作为V2/V3全功能交付包。


## 44. BASE-10 r4 磁贴读取进入同一有界线程池（2026-09-08，未实车）

当前本地检查点 `D:/apk/zhiui-stability-local-base10-r4.apk`，SHA-256 `10E02F54A657144210CF7B85D3DD074D55A4A19DF5882C2C838A6AB6999AB404`，父版本 BASE-10 r3。磁贴首次读取（ff.Ό→ag16）和8秒轮询中的磁贴读取（ie5→ie22）接入既有线程池，同属类别6。至此九处已核实的后台读取使用进程级2工作线程/8等待项；没有另开第二个线程池。

静态复核 Lo/ef 的全部基线实现 ke/le：le返回固定false；ke.get/字幕读取走平台状态getter、固定get请求或已有缓存；列表编辑方法不是这两条worker的调用目标。两条worker只计算状态/说明后投递原UI回调，点击/长按监听、getter、实际查询和其他共享selector保持原方法体。详细索引 `base10_tile_read_audit.json`、`base10_r4_manual_audit.json`。

源码和成品分别验证两条新接线以及前七条接线：原任务构造参数/selector一致，所属控制器和类别正确；继承主线程主题19项、队列6项、60生命周期入口和15清理分支通过。原Java池10,000次提交、线程/等待上限、同key替换、所有者隔离、销毁与异常测试继续有效。替身未打包；测试不是ART或厂商调用运行证明。

本次只改ff/ie两个文件；累计62文件全部可归属，22保护APK哈希保持，原资源声明不变。全量构建、zipalign、同开发证书V2/V3签名、aapt/apkanalyzer、最终apktool回解/指令比对通过；Android29声明级候选仍127无新增。JADX控制器显示实际提交/取消接线，DEBUG日志仅既有NavBarService.Ε(ImageButton,String)反编译错误。证据 `base10_r4_verification.json`、`base10_r4_branch_tests_final.json`、`base10_r4_cumulative_content.json`、`base10_r4_cumulative_signature_check.json`。

BASE-10仍为部分完成：同一控制器同类别的已运行读取可能并行，尚无查询/面板代次保证；队列有界不代表厂商调用完成时间有界。背景玻璃处理仍直接建线程，用户操作线程需按操作语义另审，不能当成可丢弃状态读取。下一步优先防止旧结果覆盖新面板/新查询，然后处理背景任务与中断、其余调用方，再推进V2/V3完整功能修复回引和总本地门禁。

未连接车机、未安装、未执行查询或车辆指令、未进入正式交付目录。旧包及回滚参照保留，当前包仍是本地开发检查点。


### BASE-10 过期结果与缓存写入的本地复现（2026-09-08）

`stability_audit_read_freshness_20260908.py` 已在 BASE-10 r4 源码和最终回解分别执行实际 Handler/lifetime、Lo/be 显示回调和 Lo/je 缓存写入指令。人工安排新值9先返回、旧值3后返回，当前显示与导航音量缓存都会回到3；对同一控制器模拟普通关闭/重开标志后，旧消息仍被接收。证据 `base10_freshness_audit.json`。这是受限指令执行加模拟返回顺序/框架调用，不是实际并发车机测试或完整开关窗运行；没有执行查询。

下一补丁不能只在Handler丢弃过期消息：仪表亮度/导航音量worker在投递前会更新控制器缓存，磁贴getter也会更新本地状态缓存。需要同时校验查询/面板代次并处理缓存提交，审计仪表重试计数/标志及getter调用方，避免旧缓存被随后UI或操作再次使用。“状态读取”表示没有新增车辆写请求，不等于getter没有本地缓存副作用。

当前APK仍是 BASE-10 r4；这个已登记的剩余问题尚未修复，不将本次复现记成稳定性通过或进入实车阶段。


## 45. BASE-10 r5/r6 导航结果有效性与队列类别（2026-09-08，未实车）

当前本地检查点 r6：`D:/apk/zhiui-stability-local-base10-r6.apk`，SHA-256 `694318ADE4019A201B31C4BB9B547B87469FB34CEA1A0DE156A77AECA6754327`；r5 `02B3B09293CA971CDA75EBFCFE226D10CC50FCC77783491EF460DC9ACD356E23` 是保留的父检查点，r5父版本r4。

r5新增每个控制器独立LatestRead查询标识，普通关闭开始/最终关闭/永久销毁使导航旧查询失效；je导航两处分支保持原查询，将后台缓存写入搬至NavVolumeApply，在所属主线程核对Service、查询和活动/预备面板身份后写缓存并执行原be回调。仪表worker和原查询方法完整保留。LatestRead的Java8/D8/自有类回解通过，10,014项JVM断言含真实延迟线程；源码/最终回解各23项结果/关闭/身份/异常分支通过。缓存提交后UI异常只隔离异常，不提供缓存回滚。

r6只修正ie轮询的一条key常量1→2。实际je selector1为仪表初始化、0/default2为导航。r3/r4旧接线测试仅按清单核对常量，漏掉业务类别冲突；此前“类别正确”结论更正。新增用途映射和真实生产线程池测试复现r5下导航轮询挤掉等待仪表任务，r6保留仪表与最新导航读取。类别现在仪表初始化1、导航初始化/轮询2。

两包构建、zipalign、项目开发证书签名、aapt/apkanalyzer、最终apktool回解及精确差异通过；r5变化6文件、r6变化1文件，累计66文件归属，原资源声明/22保护APK哈希保持，Android29候选127无新增。JADX新helper及r6轮询代码与smali对照；DEBUG非零错误仍是既有NavBarService.Ε(ImageButton,String) RegionMakerVisitor。没有将反编译失败称为全通过。

所有九处提交与前序主题19/队列6/60入口/15清理回归通过。测试不是ART/实车。未连接/安装/执行查询，未放入正式目录。完整改动、关键路径、实车最小观察步骤和回滚边界见 `launcher_project/diagnostics/stability_local_20260905_r1/base10_r6_本地修复记录.md`。

BASE-10与全计划仍未完成；继续仪表/磁贴缓存与结果代次、主题A-B-A、操作后旧查询、玻璃后台任务/中断、完整调用方、V2/V3回引和总本地门禁。旧“当前r4/问题未修”的追加记录是历史状态，其中导航乱序缓存问题已由r5处理，其余范围不据此宣告完成。


### 2026-09-09 仪表读取续审（BASE-10 r6，尚未修复）

已在r6源码及最终回解按packed-switch核对ie selector28、je selector1及de/ee/se调用关系。执行实际缓存写入与根视图读取指令，并注入新9后旧3的完成顺序，缓存仍回到3；旧de回调会读取替换后的当前面板，已经通过入口守卫的worker在模拟销毁后仍可写缓存。初始化与刷新需要共用仪表查询标识，同时保护缓存、显示和重试状态。

静态确认无效结果先设置重试待执行标志再postDelayed，未检查返回值；用户调节时间只在发起刷新前检查，结果提交未重新核对。没有据此声称已复现真实死锁或完整开关窗。证据base10_instrument_audit_20260909.json。下一步按上述范围制作独立补丁，保留原操作请求体。当前APK仍r6；本次没有代码修改、构建、查询或连接车机，全部本地检查仍未完成。


## 46. BASE-10 r7 仪表读取、缓存和重试归属（2026-09-09，未实车）

当前本地检查点 `D:/apk/zhiui-stability-local-base10-r7.apk`，SHA-256 `A6F8582C03408F2B8FD94780944DCC114D372014A02C80E4B32DF6A2F0D00806`，父版本r6保留。仪表初始化je selector1与刷新ie selector28共用每控制器独立InstrumentReads状态；查询仍在原有有界池，原getBacklightBrightness、合法范围12～22、亮度换算和操作请求体保持。正常初始化成功也更新同一缓存，避免保留旧刷新缓存。

缓存/原显示回调与重试计数统一在所属主线程检查查询、生命周期、Service和面板身份后更新。若已有活动面板，仅接受该活动面板，不能让旧预备面板通过身份检查后借de更新新活动面板。原缓存预填保留，检查缓存值/生命周期；开始新查询不使有效预填失效。两个普通关闭入口、永久销毁、仪表拖动开始/结束均使旧结果失效。未改变用户调节发出的请求或换算。

重试回调由模块保存和取消，保留150/350/700/1200/2000ms五级等待；无效刷新才重试，初始化无效不新增重试。成功结果清零计数；投递失败不留下等待标志、不消费重试次数；旧回调即便移除失败也不能复活旧查询。重复结果、异常和关闭后结果都经过有效性检查。每控制器分别至多保留一个待结果、一个待缓存预填、一个待重试引用。

生产Java实际JVM线程与10,000次连续提交共30,213项断言通过；源码和成品真实host/构造/提交/拖动分支及原导航23项、九处提交、主题/队列/60入口/15清理回归通过。查询和用户操作通过精确恢复比对，未执行厂商请求。首次构建发现拖动补丁也插入packed-switch载荷，失败日志保留；修正为只插入实际首个标签定义并新增载荷结构检查后构建通过。

构建、zipalign、开发签名、aapt/apkanalyzer、最终apktool回解及差异通过：增量11文件，累计73文件可归属，22保护APK哈希/原资源声明保持，Android29候选127无新增。JADX Host退出3仍是已知Service方法错误；InstrumentReads退出0但匿名发布回调呈现空try，已核对最终InstrumentReads$2 smali，commit与delegate位于RuntimeException保护范围内。JADX不作为可编译原码或准确行为依据。

证据：`base10_r7_verification.json`、`base10_r7_branch_tests_final.json`、`base10_r7_manual_audit.json`、累计检查、`modules/instrument_reads_r1/jvm_tests.txt`、构建/回解/JADX日志。可维护源码 `launcher_project/stability_modules/src/com/byd/launcher/stability/InstrumentReads.java`；接线脚本 `stability_base10_instrument_patch_20260909.py`，新增InstrumentReadHost smali只桥接既有所有者字段/Handler。

仍继续本地工作：磁贴缓存/结果、SOC/主题代次、等待中断与操作回调、玻璃后台任务、V2/V3回引、完整调用方/API人工复核及组合门禁。r7不是整个BASE-10或全计划完成，测试不是ART/真实窗口/native。未连接车机、未安装、未进入正式目录。

实车仅在全部本地门禁通过后，由用户安全停车观察面板反复开关和仪表读数同步；本地通过后再给最终最小步骤。失败保留QuickSettingsMgr/AndroidRuntime日志和画面，先返回原车桌面，按签名/配置兼容核对回滚已验证V2；不卸载、不清数据、不做车辆控制试验。


## 47. BASE-10 r8/r8b 磁贴状态与说明文字（2026-09-09）

当前 `zhiui-stability-local-base10-r8b.apk`，SHA256 `32DB51C548CD74FFA3821B29A214D70453BA117B483B352638EC4CB21810B3AB`。首次/轮询/单磁贴复查的缓存与显示由面板、控件、查询及操作身份保护，后台池新增磁贴身份子键，2线程8等待，每磁贴至多1待界面结果。r8b保持能量回馈/保电说明与新缓存一致。源码/成品95项场景，JVM20,024+31,044断言；累计85文件、22保护APK、API127且无新增。JADX局限详见diagnostics/stability_local_20260905_r1/base10_r8b_本地修复记录.md。其余本地检查和完整V2/V3回引未完成，当前继续SOC与后台线程；未连接车机。


## 48. BASE-10 r9/r9b SOC读取与异步操作等待（2026-09-09）

当前 `zhiui-stability-local-base10-r9b.apk`，SHA256 `B2FA96DEE07F796F2C77CBE8E9164DCAD8B339C6BD82D564BBA68B20AA5FD646`。SOC初始化/轮询共用查询及面板身份，关闭/拖动使旧结果失效，每控制器1待SOC结果。原操作等待期间暂停状态回写，旧回调不解除新等待，15秒界面等待上限与原IPC回调超时一致，不取消/重试/改变请求。源码/成品122场景、生产JVM50,012断言；累计92文件/22保护APK/API127无新增。记录launcher_project/diagnostics/stability_local_20260905_r1/base10_r9b_本地修复记录.md。完整本地阶段、V2/V3回引和ART/实车验证仍未完成。

## 49. 交接状态：R10 自动检查完成，人工收尾与后续本地计划待执行（2026-09-09）

用户本次要求编写交接文档，已新增 [智UI稳定性修复_交接文档_20260909.md](D:/apk/智UI稳定性修复_交接文档_20260909.md)，列明成果、证据、未完成事项和先本地后实车的执行门禁。R9b 是记录完整的上一检查点；最新 R10 为 `D:/apk/zhiui-stability-local-base10-r10.apk`，SHA-256 `BEA43A08CD26B7587D41853543505894EDB8C79559B5B54EBA571623D77995E0`，父树 `base10_soc_action_reads_r9b`，当前树 `base10_theme_epoch_r10`。

R10 增加主题查询标识、单个待界面结果及进程内偏好写入代次，修改 ff/ie/ci 并新增 ThemeRead/ThemeDeliver，原查询和主题应用逻辑保留。已有自动证据：源码/成品144场景、5文件增量、累计95文件归属、22保护APK未变、Android29候选127且无新增，以及构建/对齐/开发签名/aapt/apkanalyzer/最终回解通过。详见证据目录 `base10_r10_finalize_status.json`、`base10_r10_verification.json` 与累计检查文件。

ThemeRead 的 JADX 退出3，日志唯一报错为既有 NavBarService.Ε(ImageButton,String)；ThemeDeliver 退出0。人工审计、最终smali交叉确认及R10正式修复记录尚未收尾，不将其登记为全部审计通过。包信息仍 com.byd.launcher/versionCode1/versionName1.0/min24/target34/arm64-v8a，同项目开发证书；无新增车辆写请求或实车操作。

`launcher_project/stability_base10_nav_action_patch_20260909.py` 只是R11草稿，尚未执行，未生成R11工作树或APK。接手先收尾R10，再审查R11并补测试；随后继续等待中断/背景任务/调用方审计、完整V2/V3功能修复回引及总体本地门禁。未连接车机、未安装、未进入正式交付目录，原包/V2/历史成果和恢复路径保留。


## 50. BASE-10 R10主题读取人工收尾（2026-09-09）

R10现有成品哈希已复核，5增量/95累计文件，144源码成品场景沿用。人工确认主题查询、代次、关闭与setter调用链；JADX既有服务方法错误保留并交叉确认。 证据：launcher_project/diagnostics/stability_local_20260905_r1/base10_r10_本地修复记录.md（证据目录内见同名文件）。总体本地工作、R11及V2/V3回引仍未完成，未实车。

R11续作：已生成独立导航读取工作树base10_nav_action_reads_r11，仍未测试/构建；审查与下一步见launcher_project/diagnostics/stability_local_20260905_r1/base10_r11_review_progress.md。没有新增可交付APK。


## 51. BASE-10 R11导航状态读取（2026-09-09）

APK zhiui-stability-local-base10-r11.apk，SHA256 `2511C58898A47B685469CEE55EA221AB8A1AD907F58C3C6ED1FFBFAD8D8CB4ED`。导航拖动/原操作等待防旧读取、严格面板身份、单待界面结果；8增量/98累计文件，183源码成品场景，22保护包和API127无新增。人工核对和JADX记录见launcher_project/diagnostics/stability_local_20260905_r1/base10_r11_本地修复记录.md。P1～P3及实车仍未完成。

P1续作（2026-09-09）：R12状态等待草稿已生成并通过11项新增/183项继承源码场景，独立成品门禁正在进行；尚未算本地通过。调用方与玻璃背景问题见launcher_project/diagnostics/stability_local_20260905_r1/base10_p1_wait_and_glass_audit.md。


## 52. BASE-10 R12状态等待（2026-09-10）

APK zhiui-stability-local-base10-r12.apk，SHA256 `05575825A4F09761D076F91A8DD22FE03157C9D4E20A8645AB860DD19BD3AFAF`；4增量/98累计文件，194源码成品场景、22保护包、API127无新增。三处await超时不读数组，中断恢复并退出，磁贴阻止中断结果发布；JADX不完整/错误显示按最终smali交叉核对。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r12_本地修复记录.md。玻璃背景及其余P1～P3、实车未完成。


## 53. BASE-10 R13快捷面板玻璃背景（2026-09-10）

APK zhiui-stability-local-base10-r13.apk，SHA256 `D1654AAF19AB7E32740993ABD3A7A0BBE156223623EF045EBA4409C58754F7CE`。4增量/100累计文件，223源码/成品场景，生产JVM5010断言，22保护包不变、API127无新增。有界池类别9、准备/结果分别1槽、旧所有者和中断拦截。JADX x9不完整，已交叉核对最终smali。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r13_本地修复记录.md。MainActivity模糊生成链及P1～P3未完成；LatestVisualWork仅JVM准备，未集成。


## 54. BASE-10 R14保护模糊处理共享原图（2026-09-10）

APK zhiui-stability-local-base10-r14.apk，SHA256 `EEFFA872B9C1781A6B38765A77283D4F6EA34BD74027EE20DBC5253EBC1092B4`；2增量/101累计文件，238源码/成品场景、22保护包不变，API127无新增。三处回收判断排除借用的壁纸原图；裁剪模糊参数不变。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r14_本地修复记录.md。模糊任务所有者/异常分配清理、其余P1～P3未完成，未实车。


## 55. BASE-10 R15主桌面模糊任务归属（2026-09-10）

APK zhiui-stability-local-base10-r15.apk，SHA256 `5D04F1328658C2E120D65F0B04D112EA1C0D31D4037DB97FE6045247065A8992`；20增量/119累计文件，260源码/成品场景、生产JVM12073断言、22保护包不变，API127无新增。单线程单等待生成、有效主线程缓存提交、三个独立子回调和重试归属；原算法保持。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r15_本地修复记录.md。内部位图异常清理R16及其余P1～P3未完成，未实车。


## 56. BASE-10 R16位图函数内部异常清理（2026-09-10）

APK zhiui-stability-local-base10-r16.apk，SHA256 `22F1F48CBABE8FC68F21833B1CB4797FE8F92D6EB2B615C93BB00DFDE9D6F8DF`；2增量/120累计文件，284源码/成品场景，22保护包不变、API127无新增。裁剪/模糊内部错误清理，保留原图及原错误。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r16_本地修复记录.md。h2/Host调用方清理缺口留待R16b，其他P1～P3未完成，未实车。


## 57. BASE-10 R16b调用方位图清理（2026-09-10）

APK zhiui-stability-local-base10-r16b.apk，SHA256 `4243EF157CF5D05E80945AD92BA8658D1CCC1371DD7AB80A13F892D74D9A47F0`；2增量/120累计文件，293源码/成品场景及7项新增生产JVM断言，22保护包不变、API127无新增。提前接管最终图并隔离Host清理严重错误，关闭R16记录的两处调用方缺口。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r16b_本地修复记录.md。其余P1～P3未完成，未实车。


## 58. BASE-10 R17 Service初始化退出路径（2026-09-11）

APK zhiui-stability-local-base10-r17.apk，SHA256 `A0371FB1BA3D0F2D0DE56F44C2018E4E277B37942D126E59D03D02D96E65CF48`；1增量/120累计文件，302源码/成品场景组，22保护包不变、API127无新增。13处协作检查点和中断恢复退出；嵌套初始化与延迟回调仍待审计。核验器修正packed-switch表项混淆并补充goto宽度等价，11项反例/等价检查通过，累计核验已重跑。JADX默认run未还原、部分输出错误，以最终smali及分支证据为准。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r17_本地修复记录.md。P1～P3未完成，未实车。


## 59. R17初始化内部审计（2026-09-11，未新增APK）

实际smali分支复现ADB异常空字符串被误判通知监听授权成功；另确认readLine早于超时等待、进程/流清理缺口、未知列表写回风险与内部中断/归属缺口。完整证据及下一修复要求见launcher_project/diagnostics/stability_local_20260905_r1/base10_r17_初始化内部审计_20260911.md。当前仍R17，R18尚未创建，P1/P2/P3未完成，未实车。


## 60. 通知监听初始化模块准备（2026-09-11，未接入APK）

新增InitProcess与ListenerList自有Java模块，分别通过66项和47项JVM断言；前者包括真实测试子进程。用于修复阻塞读取/进程清理与未知列表保护，Android桥接、授权读回和原初始化集成仍未完成。当前APK仍R17，不将模块测试标记为原缺陷已修复。详见launcher_project/diagnostics/stability_local_20260905_r1/通知监听初始化模块进度_20260911.md。完整P1/P2/P3继续开放，未实车。


## 61. BASE-10 R18通知监听初始化（2026-09-11）

APK zhiui-stability-local-base10-r18.apk，SHA256 `AEB9E24B4C4FE7F749BBE8F1488AAF495176CEE91CC20A4EC91F6BB62CD13778`；11增量/130累计文件，316源码/成品场景组，生产JVM66/47/51断言分别通过，22保护包不变、API127无新增。授权以读回确认，未知列表不覆盖，备用进程有界并清理，原四媒体回调加实例守卫。已完成分项人工审计，JADX瑕疵及非原子列表竞争等边界详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r18_本地修复记录.md。其余P1/P2/P3未完成，未实车。


## 62. BASE-10 R19 HOME接收器（2026-09-11）

APK zhiui-stability-local-base10-r19.apk，SHA256 `D4D70049B7840A0D27ED7564AAF4F7448CD3867B987296228DCDD8C0AEDCD762`；3增量/131累计文件，326源码/成品组，22保护包不变、API127无新增。重连复用接收器、注册成功再保存、失败可重试，广播和回调均核对实例；保留原有效HOME行为。媒体池/重复管理器、影像配置和其余P1/P2/P3仍开放。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r19_本地修复记录.md，未实车。


## 63. 媒体封面完整链路审计（2026-09-11，未新增APK）

展开两个提交点后确认sj URI、v8会话补取、w8缩放三类后台来源，及绕过submit的小图直接分支。实际smali反例复现旧缩放覆盖新缓存并排入旧标题回调。发现媒体独立线程池未关闭、重连管理器替换及借用位图/当前会话补取边界，详见launcher_project/diagnostics/stability_local_20260905_r1/媒体封面完整链路审计_20260911.md。R20尚未创建，当前仍R19，完整P1/P2/P3未完成。


## 64. BASE-10 R20媒体会话回调隔离（2026-09-11）

APK zhiui-stability-local-base10-r20.apk，SHA256 `C4B11547526B3E00107A4B9488E97B0D2A71A7955DB2B118913FA46F9C7AA13C`；3增量/133累计文件，343源码/成品场景组，22保护包不变、API127无新增。每会话新回调，解除先失效，注册异常回滚，旧事件及延迟恢复核对实例，跨会话重置标题去重。本项完成，图片后台任务、URI清理、池/管理器释放及P1/P2/P3仍开放。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r20_本地修复记录.md及媒体读取与会话补充审计_20260911.md，未实车。


## 65. 媒体封面调度模块准备（2026-09-11，未接入APK）

新增MediaArtworkWork独立媒体1线程/1等待任务、每所有者1待UI结果及会话代次校验；Java8编译与12,050断言通过（含4,000次队列压力循环），并验证与模糊池独立。仅模块准备，当前仍R20，无R21工作树/APK；a9三类来源/直接分支、URI清理、Android提交桥接及完整P1/P2/P3未完成。详见launcher_project/diagnostics/stability_local_20260905_r1/媒体封面调度模块进度_20260911.md。


## 66. BASE-10 R20b媒体实际所有者修正（2026-09-12）

R20的Context-as-Service守卫与真实getApplicationContext构造相矛盾，旧测试替身不准确，已撤回R20功能正确性结论。R20b通过ia实际callback owner取得Service，仅1文件增量/133累计，源码/成品345组，22保护包不变、API127无新增。APK zhiui-stability-local-base10-r20b.apk，SHA256 `86AD91C705651039CFEAE42FE2C5C53F361C55855092D71C3655197D039EA4FA`。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r20b_本地修复记录.md。同期MediaArtworkPipeline通过38模块断言但未接入，无R21；完整P1/P2/P3未完成，未实车。


## 67. BASE-10 R21媒体封面请求接入与交接（2026-09-13）

APK zhiui-stability-local-base10-r21.apk，SHA256 `C1F4E91A419BFB35E380DE111E4EE55FDBC6FB8CF235BFC2C2BC4EA9C82DC034`；18增量/148累计文件，源码/成品367组，22保护包不变、API127无新增。统一本次metadata快照与有效结果提交，独立媒体有界池，解除/销毁/替换使封面owner失效。人工审查收尾；URI清理/缓存/上限、其他生命周期及完整P1/P2/P3仍开放，未实车。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r21_本地修复记录.md及智UI稳定性修复_新对话交接_20260913.md。


## 68. BASE-10 R22媒体URI读取与清理（2026-09-13）

APK zhiui-stability-local-base10-r22.apk，SHA256 `0ECE7827499211583DEBE73343F2EBAC3CBE7FCC1DCA76322CE095C9D2188E83`；13增量/157累计文件，源码/成品371组，生产IO133/Android替身32断言，22保护包未变。URI异常清理、字节/尺寸/预算与过期检查接入；移除旧URL缓存写入。P3 get/put扫描修正36用例通过，基线/候选仍127且无新增。JADX新类清理还原失真已以最终smali交叉确认。外部阻塞非强制超时；重复manager/监听及完整P1/P2/P3未完成、未实车。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r22_本地修复记录.md。


## 69. BASE-10 R23媒体管理器释放与初始化归属（2026-09-13）

APK zhiui-stability-local-base10-r23.apk，SHA256 `2447514FA38B89CDBF6C409C1FA78473EDFB5B40E3C7FF6D46A0C81147FDC5B4`；6增量/159累计文件，源码/成品390组，22保护包未变、API127无新增。重连/销毁统一幂等释放，延迟启动绑定manager并可撤销，失败可重试且不复活销毁对象；周期刷新校验实际归属。catch同地址标签规范化经反例及既有goto/switch回归通过。z8/u8晚到重试已另复现，完整P1/P2/P3未完成，未实车。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r23_本地修复记录.md。


## 70. BASE-10 R24媒体晚到重试与影像初审（2026-09-13）

APK zhiui-stability-local-base10-r24.apk，SHA256 `A039CB99F144FDBF94099C1008678433E5DDF69F7C3141C2C599294BBCDB8AC5`；2增量/161累计文件，源码/成品400组，22保护包未变、API127无新增。u8/z8晚到入口校验实际归属，原动作/重试正文保持，父反例关闭。JADX两类新守卫与成品一致。影像qi重连替换/关闭线程已另存反例与配置/资源初审，尚未修改。完整P1/P2/P3未完成、未实车。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r24_本地修复记录.md及影像叠层重连与资源初审_20260913.md。


## 71. BASE-10 R25影像配置类型容错（2026-09-13）

APK：D:/apk/zhiui-stability-local-base10-r25.apk
SHA256：`CBC668B482B3855CA8FA720DF8C9E2A2A57985DF25259C17C4DC2573459A65FE`
父版本R24及全部历史包保留。3增量/164累计文件，源码与成品各418组，22保护包未变，API127无新增。分项本地通过，完整计划未完成，未实车。

qi构造器的开关和宽/高/横/纵位置、tk设置页的影像开关，共六处读取改为CameraPreferences。配置值类型不符时返回原默认false/420/560/8/40；有效值保持，不做类型转换或回写。仅捕获ClassCastException，其他运行时错误不被掩盖。尺寸极值仍原样保留，本版不宣称几何限界。

真实生产Java类99断言后生成DEX；新增18组实际smali调用绑定与类型异常路径，继承400组。已复现父版本错误类型getter失败，验证六处回退。没有执行相机native初始化、反射前缀或任何车辆接口。构建、开发签名、对齐、解析、成品回解和累计核验通过。

JADX新模块/qi退出0并与成品交叉确认；tk退出3，修改点仍明确还原为CameraPreferences.flag调用；通过逆补丁确认其他正文未改，不把JADX错误当源码依据。

另存camera_cleanup_failure_r25_audit.json：执行原ki关闭尾部，替身注入Surface释放、监听移除、SurfaceTexture释放、EGL释放四类异常，均跳过后续位图等清理。正常路径也已验证。EGL效果本身为替身，未连接硬件。下一分项处理独立清理失败，再解决重连归属、打开关闭并发、帧位图借用和窗口动画。

后续仍有ADB/IME/其余等待、完整L01～L12+功能回引、127项API人工判定、配置升级回滚及组合门禁。媒体R22的6秒为协作预算，不能强制中断外部阻塞。

实车阶段由用户停车执行：已有正常配置启动及进入影像设置，检查开关与位置保持；异常配置恢复只在有备份的测试环境进行。失败先回原车桌面，收集AndroidRuntime/NavBarSvc/影像相关logcat，核对版本签名后恢复已验证V2；不得自行卸载或清数据。本轮未连接设备、安装或写正式交付目录。


## 72. 影像清理与显示位图归属依赖

## R25后影像资源依赖审计（2026-09-13）

当前可追溯本地检查点仍为R25，未创建R26工作树或APK。R25成品JADX tk退出3的具体错误位于既有NavBarService.Ε，而非新偏好读取方法；日志保存在logs/base10_r25_jadx_2_debug.txt。

下一项不能只把关闭尾部改成逐项catch后就称资源安全。新增audit_camera_bitmap_ownership_20260913.py已在实际smali片段中复现两种条件性交错：ImageView先接收位图后，关闭尾部回收同一位图，View仍引用已回收对象；UI检查isRecycled返回false后插入关闭尾部，再继续UI分支，会把已回收对象传给setImageBitmap。qi处理帧后将Ζ直接赋给Η，别名由原smali确认。证据camera_bitmap_ownership_r25_audit.json。测试仅使用可见View、共享位图及指定顺序的替身，不证明每个关闭调用都能出现该调度，也不代表真实渲染验证。

因此后续先完成ki/lb/qi/mi/o.ˋ帧回调/ag窗口的归属图：明确旧关闭与新打开的资源代次，梳理主线程显示借用、生产位图复用与解除显示的顺序；结合已有两次close各建Thread和重连直接替换qi证据，设计串行资源工作与过期拒绝，再落实独立异常清理。单加锁只覆盖setImageBitmap调用不能证明后续渲染不再使用位图；禁止盲目增加回收或以清字段当已释放。四个异常跳过后续清理的证据仍有效，但修复须避免扩大现有位图交错风险。

本轮只新增本地证据与记录，未操作设备/车辆接口。完整剩余计划与R25限制继续有效；无需重跑已完成的R22～R25检查。


## 73. R26影像共享位图回收

# R26影像共享位图回收（2026-09-13）

APK zhiui-stability-local-base10-r26.apk，SHA256 `1CB7C514ACE70C0912CEB7768667729B9DFB5934166CEDDD6D66CC787CF7D3F8`。3增量/166累计文件，源码成品各431组，22保护包未变，API127无新增。局部分项通过，未实车。

移除qi CPU、o.ˋ RGB565两条帧替换及ki关闭中的显式recycle；关闭仍清理自身Z/H引用，且不再因已回收跳过清Z。有效帧复用与像素写入保持，没有引入逐帧复制、无限缓存或新回收队列。代价是旧位图离开所有使用方后等待运行时回收，未测真实GC/峰值内存，不宣称所有内存风险消失。Android依据：https://developer.android.com/topic/performance/graphics/manage-memory 与 https://developer.android.com/reference/android/graphics/Bitmap 。

13新增实际smali组覆盖显示/关闭交错、重复、空/已回收以及两种帧替换与分配失败，继承418。JADX默认qi通过，ki正文占位、匿名callback不可单独生成；另用show-bad-code及no-inline-anonymous得到两个退出0补充输出，修改点与最终smali一致。旧伪源码条件还原不可信，按原smali交叉。

门禁曾因UTF8 JSON被Windows默认编码误读、测试依赖数字标签、累计白名单重复qi而失败。已修正显式UTF8与指令定位，仅删除新增列表中重复项；未放宽差异判断。旧工具/失败日志保留，最终门禁通过。APK未因工具修正重建。

继续查到NavBarService.onDestroy第四处影像位图recycle，需R26b补齐，R26作为保留检查点。完整生命周期仍有打开关闭并发、重连/窗口回调、共享帧改写与四类清理异常；camera_owner_map_r26.json收录11类实际方法/行/引用。无车辆、设备、安装、卸载或正式交付目录操作。


## 74. R26b影像位图销毁补齐

# R26b影像共享位图销毁补齐（2026-09-14）

APK D:/apk/zhiui-stability-local-base10-r26b.apk
SHA256：`7A60DFA3C91265A3C9265DECE86D22BAC7B3BFC484F9074228258303D1F3AE8B`
1增量/166累计文件，源码与成品各435组，22保护包未变，API127无新增。分项本地通过，完整计划未完成、未实车。

继承R26两条帧替换与关闭路径修复，再移除NavBarService.onDestroy影像位图显式recycle，清理自身Z/H引用。四个直接持有工作位图的类全部清点；R26/R26b合计四处退休路径不再让显示方持有的位图失效。没有更改原生转换、车辆接口、正常帧复用或增加逐帧复制。旧位图需等待所有引用释放及运行时回收，真实GC/峰值内存未验证。

新增4组实际smali销毁片段覆盖显示别名、空位图、已回收引用和重复清理，继承431；父版本显式回收反例已复现。成品源码一致、精确逆补丁确认销毁其他正文保持。JADX服务退出3，错误仍在原有ImageButton/String方法；onDestroy第1376～1377行明确显示清Z/H，已按最终smali逐点确认；R26的匿名callback和ki另有补充Java审查记录。

新增camera_wrapper_handoff_r26b_audit.json已用实际关闭调度、销毁清字段及完整ki关闭selector复现晚到任务拿到空wrapper；所有原生效果均为替身。仍待处理：服务销毁先启动异步关闭、随后清相机wrapper字段；线程可能晚读字段，资源交接尚未解决。打开与关闭线程未串行，重连旧owner/窗口动画与帧回调未统一失效，显示位图仍会被生产者复用改写。四种Surface/Texture/EGL清理异常仍可能跳过后续阶段。下一分项应优先实际复现wrapper交接/过期任务，设计串行资源归属，再隔离清理异常。不得宣称影像生命周期已闭环。

其后继续共享ADB/IME/其他等待、完整L01～L12+回引、API127人工判定、配置升级回滚和组合门禁。当前不请求实车；完整本地门禁后由用户安全停车验证影像开关/窗口进出/服务关闭重开，观察黑屏、旧画面、重复窗或崩溃，采集AndroidRuntime/TurnSignalCamera/NavBarSvc及crash缓冲日志。失败先回原车桌面，保留截图日志，核对签名/版本/配置后恢复已验证V2，卸载仍需明确授权。未连接设备、未安装、未清数据、未写D:/output/zhiui/clear。

Android位图回收依据：https://developer.android.com/topic/performance/graphics/manage-memory 。源脚本、成品日志、R26工具修正/失败日志及所有历史包均保留。


## 75. R27影像关闭引用交接

# R27 影像异步关闭引用交接（2026-09-14）

APK D:/apk/zhiui-stability-local-base10-r27.apk
SHA256：`5A0859609037E40644569ADADA241080C58DCE6F2D98DA6C70F39FC4CA977486`
1增量/166累计文件，源码与成品各440组，22保护包未变，API127无新增。分项本地通过，未实车，完整本地计划未完成。

NavBarService销毁时原先先调用qi关闭（创建线程），随后把qi中的相机wrapper清空。晚到线程会取得null并跳过包装对象关闭。R27移除这处提前清空，让已排队任务继续通过原qi拿到同一个wrapper；服务自身qi引用仍按原流程清空。没有增加或执行任何厂商接口，未更改原打开/停止/释放正文。

5新增实际smali测试覆盖晚到空壳、晚到活动对象、null、重复清字段、线程先运行，继承435。父反例再次复现；空壳/null完整执行关闭分支，活动对象在首次解除回调调用处停止，原生反射不执行。精确逆补丁确认其余销毁正文不变。JADX服务退出3，仅保留原有ImageButton/String方法错误；onDestroy已明确显示wrapper不再提前清空、服务qi字段仍清空，与成品smali一致。

限制：这只是引用交接修复，未保证真实相机已释放。wrapper继续由qi/任务持有，外部回调注销失败或工作阻塞时可能延长生命周期。打开关闭仍非串行，旧owner重连、窗口动画、帧复用改写及Surface/Texture/EGL异常隔离尚未完成。下一项应完善资源线程/归属和逐项清理；R25四类清理异常证据、R26b交接证据均保留。

后续共享ADB/IME/其他等待、完整功能回引、API人工判定、配置升级回滚与组合门禁仍开放。暂不提出实车安装；完整本地门禁后用户停车验证服务关闭重开、影像重复进入退出并采集TurnSignalCamera/NavBarSvc/AndroidRuntime与crash日志。失败先回原车桌面并保留证据，核对签名/版本/配置后恢复已验证V2，不能擅自卸载。没有连接设备、清数据或写正式交付目录。


## 76. R28 EGL清理异常隔离

# R28 EGL清理异常隔离（2026-09-14）

APK D:/apk/zhiui-stability-local-base10-r28.apk
SHA256：`64C59826408BECB330B44C13A9968FA317ED4D7E8E7F32E7F55466E892F4825D`
1增量/166累计文件，源码与成品各473组，22保护包未变，API127无新增。局部分项本地通过，完整计划未完成、未实车。

qi清理方法原先在解绑、销毁Surface、销毁Context或Terminate任一步抛异常时退出。R28为四个原调用分别隔离Exception，记录异常后继续后续步骤；记录日志自身也有独立异常保护。原调用顺序、空资源判断和最后清字段保持，不改变创建资源、厂商接口或车辆控制逻辑。

33新增组覆盖16种异常组合、4种日志失败、8种资源存在组合、返回false原行为及4种真实ki关闭尾部继续清理，继承440组。四种父版本中断反例已复现。所有EGL/Log均为替身，未执行真实原生调用；不是实车、线程调度或真实资源释放证明。成品与源码及逆补丁一致，JADX修改方法/日志辅助方法与smali交叉确认。

边界：这里只保证可恢复Exception后继续尝试，清引用不等于原生资源释放成功。EGL返回false仍未检查，display为null时保持原行为，VM致命Error与原生阻塞不在恢复范围。资源部分创建回滚、线程归属、打开关闭串行化及重连失效仍未解决。Surface.release、SurfaceTexture监听移除/释放的异常隔离仍待处理；R25旧反例及R26b/R27交接证据保留。

下一工作从R28继续影像资源清理与并发归属，随后共享ADB/IME/其他等待、完整功能回引、API人工判定、配置升级回滚和组合门禁。不得用473局部组宣称全部完成。完整本地门禁前不提出车机安装；之后由用户停车检查影像开关/关闭重开/重复进出，采集TurnSignalCamera/NavBarSvc/AndroidRuntime及crash日志。失败先回原车桌面，保留证据并核对签名版本配置，再恢复已验证V2；不能自行卸载。基线/所有历史包/恢复路径保留，本轮没有设备或正式交付目录操作。
