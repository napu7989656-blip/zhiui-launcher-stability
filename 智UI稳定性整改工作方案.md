# 智UI稳定性整改工作方案（交接版）

## 1. 文档目的

本方案用于交接比亚迪海豚 2021 款时尚版、车机版本 `13.1.22.2409213.1` 上的智UI Launcher 稳定性整改工作。

当前目标不是重写 Launcher，也不是继续在最新测试包上叠加补丁，而是：

1. 以最初稳定原版和已通过实车验证的零修改重打包版为参照；
2. 完整识别最初版之后的累计改动；
3. 优先消除状态栏、壁纸任务、歌词任务和弹窗的生命周期问题；
4. 将用户仍需要的功能按“一次一个主要功能”重新移植；
5. 每个版本都能覆盖回滚，不破坏原车桌面和既有恢复路径。

本文件只是一份实施与交接方案。编写本文件时未修改、构建、安装或覆盖任何 APK。

2026-09-04 补审修订：原版 → V2 的方法级证据与完整差异分类见 [《智UI_原版到V2代码审计》](智UI_原版到V2代码审计.md)。本次纠正此前漏审 `smali/o`、把失败的状态栏反射写成已生效等问题；不能只交接本方案而遗漏该审计附件。已有 S1 候选的独立执行记录见 `PROJECT_MAP.md` 第 32 节，本次文档补审未重新构建或安装。

## 2. 强制规则与安全边界

- 必须遵守 `D:\apk\AGENTS.md` 和 `D:\apk\智UI交付规则.md`。
- 只能做既有第三方 Launcher APK 的可回滚增量修改，不得改成全新 Launcher 重写。
- JADX 只用于导航和理解，准确行为必须以 apktool 的 Manifest、资源和 smali 为准。
- 不得主动修改或发送 CAN、ECU、BMS、动力、制动、转向、ADAS、安全气囊等底层控制指令。
- 空调相关实车测试只允许复用已经审计、已经实车验证过的既有桥接；不得猜测或扩展车辆命令。
- 所有实车测试默认由用户在安全停车状态下执行。
- 未完成实车稳定性验收的 APK 不得放入 `D:\output\zhiui\clear`。
- 不得覆盖或删除任何原版、已验证 APK、keystore、截图、日志和归档交付物。

## 3. 不可变基线与回滚包

### 3.1 权威原版

用户本次指定的最初版：

`C:\Users\L\Desktop\新建文件夹\智UI_V0.4.2.apk`

已确认与以下文件字节完全一致：

- `D:\apk\ORIGINAL_BASELINE.apk`
- `D:\apk\original.apk`
- `D:\apk\智UI_V0.4.2.apk`

统一属性：

- 大小：`29,799,983 bytes`
- SHA-256：`93042E48C12ED395E8F5D450BE1285E0397897F685EE95AC4080763B6E6DCCD9`

上述文件均不得覆盖或删除。

### 3.2 零修改开发签名基线

`D:\apk\Launcher_Rebuild_Test.apk`

- SHA-256：`FF06F8215156DC6CDA888C699B42FD5706A7E5E44E97227A0340A4EEA24DAAE9`
- 2026-08-25 已完成 T01–T10 实车回归；T09/T10 由用户确认通过。
- 使用项目开发证书，可作为稳定性整改分支的可安装代码基线。

稳定性整改的第一个候选版本应从这一代码基线对应的干净 apktool 工作树派生，不得从 v3.11 工作树直接删改形成。

### 3.3 已验证功能回滚包

`D:\apk\zhiui-final-v2.apk`

- SHA-256：`ADA7BD1DA144470F8C05BD24F0A7D8A27D00C435C0146D517F455D9F112FF1DC`
- 2026-08-18 已完成当时功能范围内的实车验证。
- 不得覆盖或删除。

### 3.4 当前累计测试包

`D:\apk\zhiui-final-v3.11-lyrics-click-music-app-r1.apk`

- SHA-256：`216432903EDFD70E9F774C6EF9B1379BD3ABC9D80C52E8B7D79386EDE3698710`
- 只完成安装、启动和歌词卡点击冒烟验证。
- 没有完成累计功能的长期稳定性、完整重启、窗口/线程/内存增长回归。
- 只能作为功能与差异参考，不能作为稳定性整改的开发基线。

## 4. 工作树与参考目录

| 用途 | 路径 |
|---|---|
| 原版 apktool 工作树 | `D:\apk\launcher_project\apktool` |
| 原版 JADX 参考 | `D:\apk\launcher_project\jadx` |
| final-v2 解码树 | `D:\apk\launcher_project\diagnostics\zhiui_final_v2` |
| v3.11 累计工作树 | `D:\apk\launcher_project\diagnostics\zhiui_final_v3_11_lyrics-click-music-app` |
| 构建脚本 | `D:\apk\launcher_project\build.ps1`、`build.bat` |
| 项目地图 | `D:\apk\PROJECT_MAP.md` |
| 历史记录 | `D:\apk\智UI项目日志.md` |
| 零修改实车方案 | `D:\apk\测试方案.md` |

新的整改工作树统一使用独立目录，例如：

```text
D:\apk\launcher_project\diagnostics\zhiui_stability_s1_systembars
D:\apk\launcher_project\diagnostics\zhiui_stability_s2_wallpaper
D:\apk\launcher_project\diagnostics\zhiui_stability_s3_airpanel
D:\apk\launcher_project\diagnostics\zhiui_stability_s4_media_metadata
D:\apk\launcher_project\diagnostics\zhiui_stability_s5_network_lyrics
```

禁止复用已有 v2/v3 工作树作为可写目录。

## 5. 已完成的差异审计结论

### 5.1 原版到 final-v2

本次从两个不可变 APK 重新解码，并对全部解码文件做路径和 SHA-256 比较：原版 6,699 个文件、V2 6,708 个文件，新增 9 个、修改 89 个、删除 0 个（不计 build/dist）。新解码树与各自既有分析树逐文件相同。差异不只在包名清晰的类，还包括混淆业务包 `smali/o`。

方法级审计覆盖：

- 9 个修改的业务文件：`MainActivity`、`NavBarService`，以及 `o/cb`、`ia`、`tk`、`uk`、`vl`、`y7`、`zk`；共 18 个既有方法发生文本变化，NavBarService 另新增 5 个方法。
- 新增 6 个业务类：空调面板及点击监听器、模式键接收器、壁纸轮播任务、目录解析器、轮播选项监听器。
- `o/if` 新增 15 个资源 ID；Manifest 新增 exported 的 `ModeKeyReceiver`。
- 63 个资源文件有字节差异：22 个 XML 和 41 个像素相同的 PNG。CoreService 与 12 个 AndroidX 类只有默认字段初值省略，未发现方法变化；assets/native 库未变。

原版 → V2 已确认的问题，不应被后续 V3 网络歌词问题掩盖：

| 审计编号 | 代码/资源结论 | 交接要求 |
|---|---|---|
| V2-01 | 原状态栏创建方法入口 return；替代绑定查找不存在的 `螞` 等字段并静默失败 | 恢复原创建/所有权，不把设计意图写成成功绑定；主布局也未嵌入底部导航栏 |
| V2-02 | 原 `vehicle_control_panel` 被替换，但旧车控代码仍访问被删除的 RecyclerView 等控件 | 保留原布局契约；新空调用独立布局；该打开路径会失败，外层捕获异常，不能直接称为进程崩溃 |
| V2-03 | 轮播选项只把设置根 View 设为 GONE，绕过 WindowManager 移除与字段清理 | 由设置窗口所有者真正关闭，增加反复设置的窗口数回归 |
| V2-04 | 模式键在读取用户开关和映射前被强制消耗 | 先读取配置，只有明确映射为空调时触发 |
| V2-05 | 多个入口每次 new Dialog，没有去重/集中清理 | V2 风险为叠窗；v3.7 才引入静态 Dialog/toggle，不混淆版本 |
| V2-06/07 | 壁纸任务未随 Activity 取消；目录回落和设置接线不统一 | 取消任务、统一目录及设置实现；销毁后不是永久轮播 |
| V2-08 | 新卡只更新媒体元数据，歌词正文未接线；空封面不清旧图 | 单独恢复元数据与空值复位，V2 不包含 LRCLIB |

文件、方法、行号、调用方及原版行为详见 [代码审计附件](智UI_原版到V2代码审计.md)。以上是静态确认，不表示全部是用户当前故障的实车根因。端点比较也不覆盖中间版本加入后又撤回的改动。

### 5.2 final-v2 到 v3.11

最终累计差异集中在：

- 修改 3 个主要布局；
- 修改 8 个业务 smali 文件；
- 新增歌词卡点击类 1 个；
- 新增 LRCLIB 歌词桥接及内部类 6 个；
- 新增 smali 约 2,400 行，其中歌词桥接主体约 1,406 行。

版本链：

| 版本 | 累计新增/修改 | 验证状态 |
|---|---|---|
| v3.0 | 恢复跨应用悬浮状态栏 | 首轮场景通过，未完成长期回归 |
| v3.1 | 动态壁纸顶部合成尝试 | 实车未通过 |
| v3.2 | 第二次动态壁纸状态栏修复 | 后经用户确认仍有随机静止 |
| v3.3 | HOME 前台保护及悬浮层拆除 | 多轮即时切换通过，未完成长期回归 |
| v3.4 | 网易云歌词接入预备 | 仅静态准备 |
| v3.5.1 | MediaSession 歌词读取 | 实车发生 `NoSuchMethodError`，失败 |
| v3.5.2 | 修正方法调用 | 启动稳定，播放器没有提供歌词 |
| v3.5.3 | 第二条状态栏重挂路径修复 | 三轮切换通过，未完成长期回归 |
| v3.6 | LRCLIB 网络同步歌词 | 已安装，未完成完整播放/退出/长期回归 |
| v3.7 | DD 风格空调弹层和开关语义 | 有效包未完成实车生命周期测试 |
| v3.8 | 全局隐藏系统状态栏/导航栏 | 只做默认关闭冒烟，开关和恢复未验证 |
| v3.9 | HOME 快捷路径重定向 | 安装冒烟通过，人工回桌面回归未完整记录 |
| v3.10 | 移除时钟、扩大歌词卡 | 布局通过，真实歌词播放未验证 |
| v3.11 | 点击歌词卡启动选定音乐 App | 点击通过，无累计稳定性回归 |

## 6. 已确认的稳定性风险

本节原有 P0/P1 编号主要针对 V3 累计工作树；原版 → V2 的问题以第 5.1 节及附件 V2-01～08 为准，两者必须同时纳入整改。优先保护 V2 已破坏的布局契约、恢复状态栏创建、修复设置窗口释放，再按阶段回引功能。

### P0-1：歌词定时器没有完整生命周期

涉及文件：

- `smali\com\byd\launcher\NeteaseLyricsBridge.smali`
- `smali\com\byd\launcher\NeteaseLyricsBridge$1.smali`
- `smali\o\y8.smali`

现状：

- 播放时每 500ms 在主线程执行一次歌词定位和界面刷新；
- `onSessionDestroyed()` 没有通知歌词桥接停止；
- `NavBarService.onDestroy()` 没有清理歌词 Handler/Runnable；
- 如果播放器会话异常消失而没有先发送暂停状态，TICK 可以持续自循环；
- 每次刷新还会反射查找当前 Activity，并再次向主线程投递 UI Runnable。

风险：长期 CPU 唤醒、主线程负担、失效任务残留、旧播放状态影响新会话。

整改要求：

- 增加唯一的 `start/update/stop/reset` 生命周期；
- 暂停、停止、会话销毁、服务销毁、歌词功能关闭时全部调用 `stop`；
- `stop` 必须执行 `removeCallbacks(TICK)` 并清空播放状态；
- 只在智UI可见、当前选定媒体会话确实播放且存在同步歌词时循环刷新；
- 不允许通过反射每 500ms 查找 Activity/资源 ID。

### P0-2：网络歌词线程不受控

现状：每个新歌曲 key 直接创建一个名为 `zhiui-lrclib` 的原始 `Thread`；虽然有 800ms 间隔和 6 秒超时，但没有单线程执行器、Future、并发上限和主动取消。

风险：元数据抖动或连续切歌时产生多个并发查询；旧请求只能在完成后通过 key 比对丢弃结果，不能提前释放网络和线程资源。

整改要求：

- 使用单线程 `ExecutorService`；
- 同时只允许一个进行中的请求；
- 切歌时取消旧 Future，并关闭旧连接；
- 增加内存级有限缓存，避免同一首歌重复请求；
- 网络功能必须有独立开关，默认关闭；
- 所有失败记录受控日志，不能完全吞掉异常，也不能弹窗干扰驾驶。

### P0-3：空调 Dialog 静态持有服务和窗口

涉及文件：

- `smali\com\byd\launcher\AirControlPanel.smali`
- `smali\com\byd\launcher\AirControlPanelClickListener.smali`

现状：v3.7 新增静态 `sDialog`；dismiss 后不置空，`NavBarService.onDestroy()` 也不关闭和清空。

风险：静态 Dialog 长期持有旧 `NavBarService`、Window、View 和监听器，服务重建后可能形成窗口泄漏或旧对象残留。

整改要求：

- Dialog 必须由当前 `NavBarService` 实例持有，不能使用无生命周期的静态强引用；
- 增加 `dismissAndClear()`；
- `OnDismissListener`、服务销毁、配置变化和熄屏路径都必须清空引用；
- 创建前确认服务和 WindowManager 仍有效；
- 同一时刻只能存在一个面板。

### P0-4：状态栏存在两个所有者和多条重挂路径

涉及文件：

- `res\layout\activity_main.xml`
- `smali\com\byd\launcher\MainActivity.smali`
- `smali\com\byd\launcher\NavBarService.smali`

现状（本项为 V3 恢复悬浮栏后的累计结构；V2 本身是原创建被禁用且替代反射失败，见 V2-01）：

- Activity 内有一套状态栏；
- WindowManager 又有跨应用状态栏和顶部触摸层；
- 存在试图把同一个服务字段指向两类 View 的反射补丁；必须逐版本核对真实字段与调用是否生效，不能假定绑定成功；
- HOME 事件中调用 `removeViewImmediate`，异常被吞掉；
- 至少两条延时创建/重挂路径依赖 `v33HomeActive`；
- `v33HomeActive` 依赖无障碍窗口事件及时到达。

风险：竞态、重复窗口、旧 View 引用、状态栏闪烁/静止、触摸区域残留，以及只在特定前后台切换顺序出现的偶发问题。

整改要求：

- 第一阶段直接恢复原版已稳定的状态栏/导航栏所有权模型；
- 不移动同一个 View 在 Activity 与 WindowManager 之间切换父容器；
- 不通过反射改写混淆字段来维持状态同步；
- 不保留 v3.2/v3.3/v3.5.3 相互叠加的 race workaround；
- 如果后续必须实现跨应用自绘状态栏，应作为独立主要功能重新设计和验证。

### P1-1：壁纸轮播任务保留旧 Activity

涉及文件：

- `smali\com\byd\launcher\WallpaperAutoRotateRunnable.smali`
- `smali\com\byd\launcher\MainActivity.smali`

现状：Runnable 强引用 Activity，并通过 `View.postDelayed` 延迟 5/10/15 分钟。`MainActivity.onDestroy()` 只清理 Activity 自己的 Handler，没有移除 View 上的轮播 Runnable。

风险：Activity 重建后旧页面可能被保留到延迟任务触发；多次重建可累积多个旧任务。

整改要求：

- 所有轮播只通过一个明确的 Handler 管理；
- `onResume` 或页面真正可见时启动；
- `onPause/onStop/onDestroy` 全部取消；
- Runnable 不得强持有已销毁 Activity；
- 设置间隔改变时先取消旧任务，再安排唯一新任务。

### P1-2：空调入口触发条件过宽

V2 的 `NavBarService.onAccessibilityEvent()` 遇到 `com.byd.mediacenter` 的窗口事件即调用空调弹窗，不是只响应明确的模式键按下。V2 每次 new Dialog，重复事件可能叠窗；v3.7 改为 toggle 后，重复事件才可能表现为瞬开瞬关。此外 V2 前置模式键拦截绕过用户映射（见 V2-04），需一起修正。

整改要求：

- 优先使用现有 `onKeyEvent` 和明确的 `ac_popup` 映射；
- 只处理 `ACTION_DOWN`、`repeatCount == 0` 的单次按键；
- 如果固件必须依赖媒体中心事件，必须增加时间窗口、事件类名和前台状态去重；
- exported Receiver 如果必须保留，需要核实厂商发送方及可用的权限/来源约束，再验证 action、空 Intent 和调用频率；action 匹配不能代替来源授权。

### P1-3：全局系统栏开关同步执行命令

涉及文件：

- `smali\o\zk.smali`
- `smali\o\vl.smali`

现状：开关回调同步执行 `settings get global policy_control` 和 `settings put global policy_control ...`，每次命令超时为 2 秒。

风险：设置页主线程卡顿；中途失败会形成偏好值与系统真实值不一致；进程被杀后全局沉浸策略可能残留。

整改要求：

- 稳定性第一阶段移除此功能或保持不可见；
- 若后续恢复，必须在后台线程执行；
- 写入前后读取核对真实值；
- 保存值必须 trim、格式校验并限制允许字符；
- 启动时进行偏好与系统状态对账；
- 提供独立、清晰、可复制的恢复命令；
- 不得与状态栏架构整改放在同一版本。

### P2：低风险功能

以下功能目前没有发现明显的持续资源问题，但仍需随所属版本回归：

- v3.9 针对 `com.bydmate.app` 的 HOME 快捷路径重定向；
- v3.10 取消时钟显示和扩大歌词卡布局；
- v3.11 歌词卡点击启动用户选定音乐应用。

这些功能不得提前并入状态栏首个整改包，防止扩大首轮 diff。

## 7. 总体整改路线

### 原则

1. 不在 v3.11 上继续修补；
2. 从干净基线重建稳定分支；
3. 先修底层生命周期，再恢复功能；
4. 一次只改一个主要功能；
5. 每个候选包拥有独立工作树、独立文件名和独立回滚包；
6. 安装成功、截图正常、无即时崩溃都不能代替长期稳定性验收。

### 建议版本序列

| 版本 | 唯一主要目标 | 默认包含 |
|---|---|---|
| S0 | 稳定参照 | 零修改重打包，不做新构建 |
| S1 | 恢复单一状态栏/导航栏所有权 | 原版系统栏架构，暂不含网络歌词/全局沉浸 |
| S2 | 修复壁纸目录与轮播生命周期 | S1 + 唯一可取消轮播任务 |
| S3 | 修复空调弹窗生命周期和触发去重 | S2 + 单实例可释放面板 |
| S4 | 恢复本地媒体卡信息 | S3 + MediaSession 标题/歌手/封面，不联网 |
| S5 | 可选网络歌词 | S4 + 单线程、可取消、可停止 LRCLIB |
| S6 | 低风险 UI/点击功能 | S5 + 歌词卡布局和点击入口 |
| S7 | 可选跨应用状态栏或全局系统栏 | 只能二选一，必须单独立项 |

如果某一阶段失败，停止后续合并，先修复本阶段；不得通过继续加入下一功能来绕过问题。

## 8. 分阶段实施方案

## 8.1 阶段 0：冻结现状与采集当前故障证据

### 目标

先完成原版 → V2 的代码审计交接，再记录当前实际安装版本的真实失稳类型，避免只凭“像崩溃”判断；不得假定车机仍安装 v3.11。

### 代码审计门禁

- 阅读附件 V2-01～08 的文件/方法证据，不只检查新增类，也检查 `smali/o` 和布局的未修改使用方。
- 将每项标为“静态确认 / 待实车关联 / 已修复待测 / 实车通过”，不能把待办写成完成。
- 校验原版、V2 及实际候选包哈希；检查候选是否带入错误反射、旧布局覆盖、模式键强拦截或隐藏不移除的设置窗口。
- 原版车辆信息/车控布局的完整控件契约是所有阶段的回归保护项；此项只读检查，不操作车辆控制按钮。

### 只读采集项

- 当前安装包版本、签名、安装路径；
- `com.byd.launcher` PID、进程启动次数和被杀原因；
- `main/system/events/crash` 日志；
- PSS、Java/Native/Graphics 内存；
- 线程数和名为 `zhiui-lrclib` 的线程数量；
- WindowManager 中智UI窗口数量；
- AccessibilityService 是否反复解绑/重绑；
- 当前媒体会话及播放状态；
- 当前 `settings get global policy_control`；
- 当前前台包和 HOME 解析结果。

### 建议日志目录

```text
D:\apk\launcher_project\diagnostics\stability_capture_YYYYMMDD_HHMMSS
```

不得清空现有 logcat 缓冲区。

### 建议命令模板

```powershell
$ADB = 'C:\Users\L\AppData\Local\Android\Sdk\platform-tools\adb.exe'
$DEVICE = '<用户明确确认的设备序列号>'

& $ADB -s $DEVICE logcat -v threadtime
& $ADB -s $DEVICE shell dumpsys meminfo com.byd.launcher
& $ADB -s $DEVICE shell dumpsys activity services com.byd.launcher
& $ADB -s $DEVICE shell dumpsys window windows
& $ADB -s $DEVICE shell dumpsys media_session
& $ADB -s $DEVICE shell settings get global policy_control
```

上述命令均为读取。安装、重启、强停、清数据、修改设置仍需用户明确授权。

### 分类标准

| 现象 | 判定方向 |
|---|---|
| `FATAL EXCEPTION` / `AndroidRuntime` | Java 崩溃 |
| `ANR in com.byd.launcher` | 主线程阻塞或 Binder/锁等待 |
| `lowmemorykiller` / `lmkd` | 内存压力 |
| `rapidmode Force stopping` | OEM 系统主动终止，不是普通崩溃 |
| `WindowLeaked` / `BadTokenException` | Dialog/悬浮窗口生命周期 |
| `View not attached to window manager` | 重复或失序 removeView |
| 无崩溃但 PID 变化 | 系统强杀、安装覆盖或服务自停 |
| PID 不变但状态栏/触摸异常 | 窗口竞态或 View 所有权问题 |

## 8.2 阶段 1：S1 状态栏/导航栏稳定化

### 基线

从零修改重打包对应的干净工作树复制到新目录，不从 v3.11 回删。

### 允许修改

- `res/layout/activity_main.xml`（仅在确有必要时）；
- `smali/com/byd/launcher/MainActivity.smali`；
- `smali/com/byd/launcher/NavBarService.smali`；
- 相关状态栏/导航栏布局资源。

### 禁止合并

- LRCLIB；
- 空调面板改版；
- 全局 `policy_control` 开关；
- 歌词卡点击；
- 新壁纸轮播；
- CoreService 和车辆控制逻辑。

### 实现目标

- 恢复原版稳定的 View/Window 所有权；
- 删除反射重绑定 Activity 状态栏的补丁；
- 删除 `v33HomeActive` 和两条延时重挂 workaround；
- WindowManager 中每类自绘窗口最多一个；
- `onDestroy` 对已添加窗口逐一安全移除并置空；
- 不修改全局系统策略。

### 验收

- HOME 前台 30 分钟无闪烁、冻结和重复栏；
- 普通应用往返 50 次；
- 熄屏/亮屏 10 次；
- 不出现窗口数量增长；
- 不出现 `View not attached`、`BadToken` 或窗口泄漏；
- 正常重启后自动成为既有 HOME，状态栏/导航栏一致。

## 8.3 阶段 2：S2 壁纸轮播生命周期

### 实现目标

- light/dark 目录仍按主题隔离；初始加载、刷新、轮播共用同一解析与有效图片回落策略；
- 轮播选项需要关闭设置页时，调用其窗口所有者的移除/清理流程，禁止仅 getRootView().setVisibility(GONE)；
- 只保留一套轮播设置接线，清理未经使用且分钟数比较错误的残留分支；
- 默认关闭轮播；
- 全局只有一个定时任务；
- Activity 不可见或销毁时无任务；
- 重新进入桌面后按保存设置恢复；
- 不对动态壁纸视频帧做截图、复制或缓存。

### 验收

- 连续 20 次“设置→改轮播间隔→重新打开”，窗口/根 View 数量回到基准；
- 子目录缺失、为空、只有非图片、根目录有图片时，各加载入口结果一致；
- 关闭时 20 分钟不自动切图；
- 5 分钟模式完成至少两个完整周期；
- 轮播过程中打开应用、返回 HOME、熄屏/亮屏；
- Activity 重建前后线程和待执行任务不增长；
- 不出现旧 Activity 或旧 View 更新界面。

## 8.4 阶段 3：S3 空调弹窗生命周期

### 实现目标

- 保留原 vehicle_control_panel 布局及所有旧控件 ID；新空调使用独立布局资源，审计所有旧使用方；
- 当前 NavBarService 实例拥有唯一 Dialog；
- `show()`、`dismissAndClear()` 语义明确；
- 所有入口调用同一管理器；
- 先读取自定义开关/映射，只在明确 ac_popup 时处理单次 ACTION_DOWN；保持原功能必须有效；
- 核实接收器来源约束，并对广播/按键/窗口事件跨入口去重；
- 服务销毁和配置变化强制关闭；
- 不增加车辆控制能力。

### 实车边界

第一轮只验证弹层开关和窗口生命周期，不点击车辆控制按钮。窗口稳定后，才按用户授权逐项测试已经验证过的空调开关、温度、风量、循环和前除霜桥接。

### 验收

- 连续打开/关闭 50 次；
- 自定义关闭、保持原功能、播放/暂停、空调四种模式键配置分别生效；仅空调映射下按一次打开、再按一次关闭；
- 原车控面板打开不出现 VehicleCtrlMgr / inflate failed；不点击车辆控制按钮；
- 普通媒体中心窗口变化不会误触发；
- 切应用、熄屏和服务重建后不残留窗口；
- WindowManager 中弹窗数量始终为 0 或 1；
- 无 `WindowLeaked`、`BadTokenException`。

## 8.5 阶段 4：S4 本地媒体信息

### 实现目标

- 只读取当前选定 MediaSession 的标题、歌手、封面和播放状态；
- 不联网；
- 不发送媒体控制；
- 会话销毁时清空状态和回调；
- NavBarService 销毁时注销所有 MediaController Callback。

### 验收

- 播放、暂停、继续、切歌；
- 退出播放器；
- 切换到另一个媒体 App；
- 返回桌面后卡片显示正确且不继续刷新旧会话；
- 不出现重复回调或线程增长。

## 8.6 阶段 5：S5 可选网络歌词

此阶段必须在 S4 长期稳定通过后才能开始。

### 实现目标

- 独立开关，默认关闭；
- 单线程执行器；
- 单个可取消 Future；
- 切歌取消旧请求；
- 连接和输入流始终在 finally 中关闭；
- 只接受 HTTPS；
- 有限大小内存缓存；
- 播放停止、会话销毁、服务销毁时停止 500ms TICK；
- 智UI不在前台时不做 UI 刷新；
- 网络错误只显示简短非干扰状态，不崩溃、不重试风暴。

### 验收

- 连续快速切歌 20 次，网络线程始终不超过 1；
- 无网络、DNS 失败、服务超时、返回空歌词；
- 播放器退出后 2 秒内停止所有歌词刷新；
- 暂停后不再每 500ms 更新文本；
- 重新播放能够恢复；
- 60 分钟内线程、PSS 和 Handler 队列无单调增长。

## 8.7 阶段 6：低风险 UI 与点击

可独立移植：

- 时钟显示策略；
- 歌词卡高度和字号；
- 歌词卡点击打开用户选定音乐 App；
- HOME 快捷路径重定向。

每一项仍需形成独立 APK 或至少独立可审查提交，不能一次混入四项。

## 8.8 阶段 7：跨应用状态栏或全局系统栏

这一阶段不是稳定主线的必选项。

必须二选一：

1. 重新设计跨应用自绘状态栏；或
2. 恢复全局隐藏系统栏开关。

不得在同一个版本同时实现两者，否则难以区分是悬浮窗口还是系统策略导致异常。

如果恢复全局开关，必须验证：开启、关闭、应用切换、进程被杀、正常重启、异常断电后的状态对账和回滚。

## 9. 每个版本的标准工作流

1. 记录父 APK 文件名、大小、SHA-256、签名证书摘要；
2. 复制父版本干净工作树到新的独立目录；
3. apktool 与 JADX 同时审计目标调用链；
4. 写出本版允许修改文件白名单；
5. 一次完成一个主要功能；
6. 使用 apktool `--force` 全量构建，禁止依赖旧增量缓存；
7. zipalign；
8. 使用项目本地开发证书签名；
9. 使用 apksigner 验证 V2/V3；
10. 使用 aapt/apkanalyzer 检查包名、入口、SDK、ABI 和 Manifest；
11. 对最终 APK 再次 apktool 解码，确认改动确实进入最终 DEX/资源；
12. 递归 SHA-256 对比父工作树，确认没有白名单外变化；
13. 更新 `PROJECT_MAP.md` 和 `智UI项目日志.md`；
14. 用户安全停车实车测试；
15. 测试通过后才允许作为下一版本父基线。

构建成功不代表可安装；可安装不代表功能通过；功能截图通过不代表稳定性通过。

## 10. 静态检查清单

每次构建至少确认：

- Manifest 没有意外新增 exported 组件或高风险权限；
- 未触及 CoreService、8888 服务、HDC、尾门、CAN/ECU 等车辆控制链；
- 所有新增 Handler/Runnable 有对应移除路径；
- 所有 Receiver 有对应注销路径，或为 Manifest Receiver 且入口受控；
- 所有 Dialog/Window 有明确 dismiss/remove 和置空路径；
- 所有 MediaController Callback 有对应 unregister；
- 所有 Executor/Future/Thread 有 shutdown/cancel/退出条件；
- 所有 InputStream/URLConnection 有 finally 清理；
- 所有静态字段不强持有 Activity、Service、Dialog、View 或 Window；
- 不在 UI 回调中执行最长可达数秒的同步 shell/Binder/网络操作；
- 不吞掉关键异常；至少以限频日志保留根因；
- 不把 JADX 伪源码直接复制回 smali。

## 11. 实车稳定性测试矩阵

### 基础测试

- 覆盖安装成功；
- 冷启动、温启动；
- HOME 恢复；
- 程序列表和普通应用启动；
- 原车桌面恢复入口仍可用；
- 不测试危险车辆控制入口。

### 压力测试

| 项目 | 最低次数/时长 |
|---|---|
| HOME 与普通应用往返 | 50 次 |
| 熄屏/亮屏 | 10 次 |
| 设置页打开/关闭 | 20 次 |
| 空调弹层开关（到 S3 后） | 50 次 |
| 音乐播放/暂停/切歌（到 S4 后） | 20 次 |
| 快速切歌（到 S5 后） | 20 次 |
| 前台持续观察 | 60 分钟 |
| 正常重启 | 至少 1 次，最终候选建议 3 次 |

### 资源快照

测试开始、30 分钟、60 分钟分别记录：

- PID；
- PSS；
- Java/Native/Graphics 内存；
- 线程数；
- `zhiui-lrclib` 线程数；
- 智UI Window 数；
- 当前 AccessibilityService 状态；
- 当前 `policy_control`。

### 通过标准

- 0 次 `FATAL EXCEPTION`；
- 0 次 ANR；
- 0 次非预期 rapidmode 强停；
- 无重复状态栏、导航栏、触控层或 Dialog；
- 无 `WindowLeaked`、`BadTokenException`、`View not attached`；
- PID 不发生无法解释的变化；
- 线程数和窗口数不随操作次数单调增长；
- PSS 在完成操作并静置后能够回落，不持续无界增长；
- 暂停/退出播放器后歌词 TICK 和网络任务停止；
- 重启后 HOME、系统栏和偏好状态一致。

## 12. 停止条件

出现下列任一情况，立即停止本版本后续测试并回滚：

- Launcher 循环闪退或反复启动；
- 无法返回智UI或原车桌面；
- 系统状态栏/导航栏全部消失且无法通过 UI 恢复；
- 屏幕存在不可关闭的悬浮层或触摸被遮挡；
- `FATAL EXCEPTION`、ANR、`WindowLeaked`、`BadTokenException`；
- 进程线程或窗口数量持续增长；
- 出现任何未计划的车辆控制动作；
- 发现白名单外文件变化或增量缓存没有重新编译目标文件。

## 13. 回滚方案

### 首选

同开发证书版本之间，在版本规则允许时使用已验证包覆盖安装：

`D:\apk\zhiui-final-v2.apk`

或回到本轮上一个已经通过的稳定性候选包。

### 零修改参照

需要排除全部新增功能时，使用：

`D:\apk\Launcher_Rebuild_Test.apk`

### 全局系统栏恢复

只有在明确确认异常由 `policy_control` 残留造成、并由用户授权后，才执行相应恢复。执行前先读取并记录当前值。

```powershell
& $ADB -s $DEVICE shell settings get global policy_control
```

如果确认应恢复系统默认策略：

```powershell
& $ADB -s $DEVICE shell settings delete global policy_control
```

该命令会删除整个全局策略项，不能在不知道原值时擅自执行。

未经用户明确确认，不卸载、不清数据、不重启、不修改默认 HOME。

## 14. 交付物要求

每个候选版本必须同时交付：

1. 唯一文件名的最终 APK；
2. SHA-256；
3. 父版本和回滚版本；
4. 实际修改文件清单；
5. 白名单外差异检查结果；
6. apktool 构建日志；
7. zipalign、aapt、apksigner 验证结果；
8. 最终 APK 回解检查结果；
9. 实车测试步骤和停止条件；
10. logcat、资源快照、截图；
11. `PROJECT_MAP.md` 与 `智UI项目日志.md` 更新；
12. 明确标记“静态通过 / 冒烟通过 / 功能通过 / 稳定性通过”中的哪一级。

不得用“已签名”“安装成功”“截图正常”代替稳定性结论。

## 15. 首轮执行建议

接手人员的首轮工作只做以下内容：

1. 阅读《智UI_原版到V2代码审计》并复核 V2-01～08，校验关键 APK 的 SHA-256；不得跳过混淆业务包和旧布局使用方。
2. 检查 `PROJECT_MAP.md` 第 32 节的既有 S1 工作树/候选；保留现有产物，不重复创建或覆盖。已有 S1 只代表静态通过，未实车验证。
3. 对 S1 补充原版→V2 缺陷排除检查及原车控布局契约核验，暂不移植歌词、空调、轮播和全局沉浸。
4. 在用户确认安全停车和设备后，采集实际安装版本日志、窗口和内存快照；不假定当前版本，不清空日志。
5. 先提交候选 diff、上述补审结果和测试清单，再在用户明确授权下实车覆盖安装；本次交接修订不执行安装。
6. 若确需新候选，只使用新文件名、独立工作树和完整构建/签名/回解验证，不覆盖既有 S1。
7. S1 完成长时间和重启回归后才进入 S2；S2 必须包含设置窗口真实关闭，S3 必须包含独立布局与映射生效，不能只修表面的定时器/弹窗。

## 16. 最终目标

整改完成后的稳定版应满足：

- 保持原版稳定的 Launcher、HOME、无障碍服务和窗口架构；
- 用户需要的功能全部有明确生命周期和关闭路径；
- 不依赖不断叠加的 race workaround；
- 不存在永久运行的歌词刷新、无界网络线程、旧 Activity 定时任务或静态 Dialog；
- 不改变车辆底层控制能力；
- 每一项功能都能独立关闭、独立验证、独立回滚；
- 最终包通过长期实车稳定性和正常重启回归后，才允许进入正式交付目录。
