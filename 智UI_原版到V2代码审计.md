# 智UI：原版 → final-v2 代码审计与交接补充

日期：2026-09-04。范围：原版与 `zhiui-final-v2.apk` 两个端点之间保留下来的累计差异。

## 1. 本次纠正什么

上一版《智UI稳定性整改工作方案》没有完成可交接的原版 → V2 方法级审计，遗漏了混淆包 `smali/o` 中的业务修改，而且把状态栏重绑定的设计意图当成了实际生效行为。本文纠正该部分，必须与主方案一起交接。

V2 当时实车功能通过的记录继续有效，但不等于其所有新增路径都没有缺陷；V2 仍须保留为既有成果/回滚包，不能因此被覆盖或删除。

本轮只进行本地静态检查、APK 解码和文档补充；未修改 APK 业务代码、构建新包、安装、连接车辆或发送任何车辆控制。

## 2. 证据与核验方法

### 2.1 不可变 APK

| 对象 | SHA-256 |
|---|---|
| `D:\apk\ORIGINAL_BASELINE.apk` | `93042E48C12ED395E8F5D450BE1285E0397897F685EE95AC4080763B6E6DCCD9` |
| 用户提供的 `C:\Users\L\Desktop\新建文件夹\智UI_V0.4.2.apk` | 与上述原版完全相同 |
| `D:\apk\zhiui-final-v2.apk` | `ADA7BD1DA144470F8C05BD24F0A7D8A27D00C435C0146D517F455D9F112FF1DC` |

本轮再次计算了上述 APK 的 SHA-256，并以 apktool 3.0.2 分别重新解码至独立目录，未覆盖旧树，两个解码进程均退出 0。

| 简称 | 路径 |
|---|---|
| A：原版新解码 | `D:\apk\launcher_project\diagnostics\audit_original_v2_20260904\original` |
| B：V2 新解码 | `D:\apk\launcher_project\diagnostics\audit_original_v2_20260904\v2` |
| 原版既有 smali/资源 | `D:\apk\launcher_project\apktool` |
| V2 既有 smali/资源 | `D:\apk\launcher_project\diagnostics\zhiui_final_v2` |
| 原版 JADX | `D:\apk\launcher_project\jadx\sources` |
| V2 JADX | `D:\apk\launcher_project\diagnostics\zhiui_final_v2_jadx\sources` |

以下行号引用 V2 既有解码树；先验证了 19 个关键证据文件，随后完成全部文件核验：新解码 A/B 与各自既有树的路径和 SHA-256 差异均为 0（排除 build/dist）。JADX 用于理解调用关系，反射字符串、方法调用目标、分支和控件存在性以 smali/XML 为准。尤其不能把 JADX 的 `UnsupportedOperationException("Method not decompiled")` 当作 APK 自身抛出的异常。

### 2.2 覆盖范围

- 全量比较解码文件路径/内容，业务审计同时覆盖 `smali/com/byd/launcher` 和 `smali/o`，不能只看包名清晰的类。
- 对内容有变化的业务类按 `.method … .end method` 分组比较，再检查真实调用路径；分支标签重编号不算新行为。
- 复核 Manifest、全部资源目录、assets、native 库及第三方代码差异。
- 对布局变化反向检查未修改的使用方，避免“代码没改，因此不用查”的遗漏。
- 静态结论不替代实际故障日志、堆/窗口快照和长期实车测试；本文不声称已经定位所有失稳原因。

## 3. 差异总账

全量解码文件比较（排除 build/dist）：原版 6,699 个，V2 6,708 个；新增 9 个、修改 89 个、删除 0 个。新增项是 6 个业务类和 3 个签名元数据文件。89 个修改项由 63 个资源、23 个 smali，以及 Manifest、原始 Manifest 副本、apktool.yml 各 1 个构成；语义分类如下。

### 3.1 真正涉及业务行为的文件

修改 9 个既有业务 smali 文件、新增 6 个业务类，另修改 1 个资源 ID 常量类。

| 文件（相对 A/B） | 修改方法/职责 | 原版 → V2 实际变化 |
|---|---|---|
| `smali/com/byd/launcher/MainActivity.smali` | `ͼ()`、`onCreate()`、`onResume()` | 按 light/dark 选壁纸目录；创建轮播任务；恢复歌词卡可见性；每次 resume 两次调用状态栏绑定 |
| `smali/com/byd/launcher/NavBarService.smali` | `<clinit>`、`Ͱ(service,String,String,View)` | B站播放页加入隐藏栏名单；沉默版高德按已选包名启动导航 |
| 同上 | `onAccessibilityEvent()` | 窗口事件处理由 `0x20` 扩大至同时处理 `0x400000`；媒体中心窗口直接触发空调；加入 `supports_fullscreen` 元数据判断 |
| 同上 | `onKeyEvent()`、`ζ(View)` | 模式键前置强制打开空调；增加 `ac_popup` 分支；底栏空调入口改为新弹窗，原启动原车空调页代码留在 return 后 |
| 同上 | `Ϟ()`、`Ϡ(int)` | 导航栏透明/隐藏模糊图；原状态栏创建方法 `Ϡ(int)` 在入口直接返回 |
| 同上 | 新增 5 个方法 | `attachActivitySystemBars`、`attachStatusBarToMainActivity`、反射 get/set、全屏元数据读取；前一个绑定方法未发现直接调用，后一个存在字段名错误 |
| `smali/o/cb.smali` | `onMapClick(View)` | 地图卡点击识别沉默版高德，并按选定包名取 LaunchIntent |
| `smali/o/ia.smali` | `ˏ(Bitmap,String,String)` | 在原媒体回调中额外更新歌词卡封面/歌名/歌手，不更新歌词正文 |
| `smali/o/tk.smali` | `run()` | 模式键的映射列表增加“空调控制”；其它按键仍使用原标签集合 |
| `smali/o/uk.smali` | `onClick(View)` | 增加 selector=16 的轮播选择对话框分支；当前设置页使用的是另一套内联按钮接线，未发现该新分支的直接构造接线 |
| `smali/o/vl.smali` | `<clinit>`、`Χ()` | 增加沉默版高德/空调映射项；设置页接线四个轮播按钮和歌词卡开关 |
| `smali/o/y7.smali` | `run()` | 一个壁纸加载分支改用新增目录解析器 |
| `smali/o/zk.smali` | `onCheckedChanged()` | 增加 selector=9，保存 `lyrics_card_visible` 并切换 Activity 卡片可见性 |
| `smali/o/if.smali` | 资源常量字段 | 增加 15 个 ID，无方法逻辑变化 |

上述 9 个业务文件共有 18 个既有方法文本发生变化；NavBarService 新增 5 个方法。新增类如下，不能只审计它们而跳过接入点：

| 新增类 | 方法/职责 |
|---|---|
| `AirControlPanel` | `show` 创建 Dialog；`bind` 绑定按钮 |
| `AirControlPanelClickListener` | 关闭 Dialog；其它按钮按相同 ID 向底栏 View `performClick` |
| `ModeKeyReceiver` | 收到 `byd.intent.action.SWITCH_MEDIA_MODE` 时直接打开弹窗 |
| `WallpaperAutoRotateRunnable` | 构造、`schedule`、`advanceNow`、`run`；轮播调度与翻页 |
| `WallpaperDirectoryResolver` | 选择 light/dark 子目录，不存在/为空时回落根目录 |
| `WallpaperRotationOptionListener` | 保存 0/5/10/15 分钟并重排任务；内联按钮还会隐藏设置窗口根 View |

### 3.2 资源与外围内容

- `res` 两侧均为 1,304 个文件，63 个文件内容不同，无新增/删除资源文件。
- 其中 41 个 PNG 逐像素和尺寸比较相同，包括 3×3 九宫格及 1×1 占位图；不能把它们的编码字节差异说成图案变化。
- 22 个 XML 不同：16 个布局、2 个 drawable、4 个 values 文件。
- 16 个布局：`activity_main`、`dialog_settings`、`nav_bar`、`status_bar`、`vehicle_control_panel`、`widget_bar`，以及 `widget_card_add/app/environment/launcher/map/music/settings/trip/tyre/vehicle`。
- 桌面增加状态栏 include 与歌词卡；时钟缩小成卡片；多处间距从 dp 改成 px；卡片背景透明度变化。底部导航栏没有在 `activity_main.xml` 中新增 include，不能写成“两条栏都已嵌入 Activity”。
- `vehicle_control_panel.xml` 不是小幅换肤：原车辆控制列表/车辆信息布局被整个替换为空调按钮布局，旧使用方未同步修改（见 V2-02）。
- `values/ids.xml`、`public.xml` 新增同一组 15 个 ID；`styles.xml` 给 `Theme.NavDemo` 增加透明窗口背景、无标题和 translucent 属性；`attrs.xml` 为 enum/flag 顺序变化，需与实际业务修改分开。
- Manifest 仅新增 enabled/exported 的 `ModeKeyReceiver`，未给该接收器声明发送权限；没有新增 uses-permission。包名、版本号和 SDK 目标未改。
- `assets` 3 个、`lib` 4 个、`unknown` 61 个文件内容相同；没有发现 native 库或这些资产的累计修改。
- `CoreService.smali` 和 12 个 AndroidX smali 的差异为省略 null/false/0 默认字段初值，方法体未变。不得把这类差异报告成车辆接口或 AndroidX 逻辑改写。
- `original/` 下原始 Manifest 副本、签名元数据，以及 `apktool.yml` 的输入文件名变化属于打包/解码记录，另行记录，不计作业务功能。

## 4. 已确认问题与风险

“静态已确认”是指代码或资源中可以直接证明；是否正是用户当前失稳的原因，仍须与对应版本的实车日志关联。优先级表示整改顺序，不代表已证实造成进程崩溃。

### V2-01 / P0：原状态栏创建被禁用，新绑定却查找不存在的字段

原版：`NavBarService.Ϡ(int)` 负责创建/绑定原状态栏 View 及相关窗口。V2：该方法入口直接 `return-void`（B 中 `NavBarService.smali:27706` 起），同时 `activity_main.xml:5` 嵌入一份状态栏布局。

V2 的 `MainActivity.onResume()` 在 2704、2727 行两次调用 `attachStatusBarToMainActivity()`。但该方法在 `NavBarService.smali:4056` 查找字段 `螞`；MainActivity 实际声明的弱引用字段是 `Λ`，不存在 `螞`。异常被捕获后把 Activity 置为 null，并在 4088 行退出。该路径不是“成功重绑定”，而是静默失败。

后续反射目标 `捕/蠁/尾/胃/纬/未/蔚/味/畏` 同样不在 NavBarService 字段声明中。另一个使用真实字段的 `attachActivitySystemBars()` 仅有定义，未发现直接调用；其中导航栏分支还依赖 Activity 内的 `btn_back`，而该主布局没有嵌入 nav_bar。

附带维护风险：4048 行保留了被 goto 跳过的不存在方法 `MainActivity.秃()`；4131、4163 行把 `removeViewImmediate` 的调用目标写成 `android.view.ViewManager`，与原版使用的 `android.view.WindowManager` 不同。这些路径不能只改几个反射字符串就投入使用，必须一并检查 API 声明与可达性。

影响：状态栏可能只剩 XML 初始显示，原服务更新/跨应用显示路径被破坏。具体图标停留、跨应用缺失等表现需实车核对；不能把上述被短路的删除窗口代码当成 V2 已执行的窗口删除。

处置：S1 恢复原版创建和所有权模型；不移植这套错误反射或不可达残留。V3 再恢复悬浮栏形成的双路径问题必须与 V2 的“绑定未生效”分开描述。

### V2-02 / P0：复用原布局名破坏旧车控面板的控件契约

V2 `vehicle_control_panel.xml` 删除了 `rv_vehicle_controls`、`vehicle_content`、`btn_edit_controls`、车辆图片及多项车辆信息控件。未修改的 `o/oj.smali` 仍加载同一资源。

证据：`o/oj.smali:3549` 加载该布局；3701 行查找 `rv_vehicle_controls`，3721 附近保存后直接 `setItemAnimator`，无 null 检查。JADX `p003o/C1295oj.java:630–655` 同时呈现该关系：查找返回 null 后在 642 行调用方法；之后还直接访问已经删除的 `vehicle_content`。

该路径会产生空引用异常，但外层捕获 Exception 并记录 `VehicleCtrlMgr / inflate failed`（JADX 746–748 行），因此静态可确认的是旧面板打开失败，不能直接写成“已证实整个进程崩溃”。其它删掉的控件还需逐项检查使用方。

处置：保留原 `vehicle_control_panel` 及其全部旧契约；新空调弹窗使用独立布局/资源名。新增资源必须检查资源 ID 和构建后的 DEX/XML，不能再覆盖旧资源以绕过接入。

### V2-03 / P1：选择轮播间隔只隐藏设置窗口，不释放窗口

`WallpaperRotationOptionListener.onClick(View)` 在保存选项后调用 `view.getRootView().setVisibility(GONE)`，没有调用设置管理器的关闭方法。

设置页由 `o/vl.Χ()` 经 WindowManager.addView 挂载（JADX `C1465vl.java:1569–1572`）；原关闭方法 `o/vl.ͼ()` 会清空设置页字段，并最终 removeView（JADX 743–761 行）。新按钮绕过该流程。再次打开设置时 `Χ()` 重新 inflate 并覆盖保存的窗口字段，没有在入口先移除这份隐藏窗口（JADX 1414–1435 行）。

影响：存在“选择轮播 → 隐藏旧窗口 → 再打开设置”的窗口/View/监听器保留路径。实际累积数量与回收时机需 WindowManager/内存快照验证。

处置：选项回调只更新设置；需要关闭时交由窗口所有者执行真正的 dismiss/remove 和引用清理。验收增加连续 20 次“设置→改间隔→重新打开”，窗口数应回到基准。

### V2-04 / P1：模式键无条件拦截，绕过用户开关和映射

`NavBarService.onKeyEvent()` 5778–5802 行在读取 SharedPreferences 前，就对 ACTION_DOWN、repeatCount=0、keyCode=0x121（289）执行 `AirControlPanel.show()` 并返回 true。原来的自定义开关与 `swc_mapping_289` 路径没有机会决定该次模式键行为。

`o/vl` / `o/tk` 虽然提供“保持原功能”“播放/暂停”“空调控制”等选项，前置拦截仍使这些选择与实际行为脱节。6196 行后的 `ac_popup` 分支不能补救已经被提前消耗的按键。

处置：先读取是否启用自定义及当前映射，再处理明确的 `ac_popup`；未启用/保持原功能必须保留原行为。测试要覆盖开关关闭、保持原功能、播放/暂停和空调四种配置，不能只测最后一种。

### V2-05 / P1：多个入口都 new Dialog，没有单实例或入口去重

V2 `AirControlPanel.show()` 每次 new Dialog，使用 Service Context 和 2032 窗口类型，直接 show；没有已显示检测、集中引用、关闭清理或服务销毁处理。

入口同时包括：模式键、底栏空调按钮、exported `ModeKeyReceiver` 广播、`com.byd.mediacenter` 的两类无障碍窗口事件。后者只有包名判断，没有证明事件来自一次模式键动作（NavBarService 4358–4368 行）。Receiver 只验 action 和服务非空，没有发送权限声明或速率限制。

影响：V2 是重复事件可能堆叠多个 Dialog；到 v3.7 改成 toggle 后，同类重复事件才变成可能瞬开瞬关。不能把 v3.7 的静态 sDialog/toggle 行为提前写成 V2 行为。未进行伪造广播或实际按键试验。

处置：一个明确事件源负责一次用户动作，跨入口去重；Dialog 归当前服务实例管理并在关闭/销毁时释放；接收器按真实厂商发送需求决定是否保留及如何约束。不以“action 名正确”代替来源授权。

### V2-06 / P1：轮播任务的取消与 Activity 生命周期没有接上

新增 `WallpaperAutoRotateRunnable` 强持有 MainActivity，使用 View.postDelayed 排队；MainActivity.onDestroy 仍只清理自己的 Handler 和页面回调，没有取消该 View 上的轮播 Runnable。

run 会检查 finishing/destroyed 并停止，因此不能称为“销毁后永久自循环”；准确风险是旧 Activity 可被延时任务保留到下一次执行，最长由已保存间隔决定（界面选项最高 15 分钟）。Activity 退后台但未销毁时仍可继续轮播。

处置：可见时启动、不可见/销毁时从同一调度对象取消；关闭功能和改间隔先取消旧任务。验收含快速重建、长时间后台与重新进入。

### V2-07 / P2：壁纸目录策略不一致，存在两套残留设置实现

MainActivity.ͼ() 直接选择 light/dark 子目录，没有与解析器相同的根目录回落；o/y7.run 的另一加载分支使用 `WallpaperDirectoryResolver`，后者才检查目录/非空并回落。初次加载、刷新、主题切换的内容可能因此不一致。

解析器只检查目录内文件数量，不判断是否包含可用图片；主题来源也须统一核对（一个通过 `o/ci.ͳ(Context)`，一个直接读 `light_mode`）。此外 o/uk 的新增对话框分支用 4 而不是 5 比较已选分钟数（800 行），但本轮未发现其直接接线，属于残留路径缺陷，不应夸大为当前内联按钮已触发的问题。

处置：只保留一套目录解析和一套设置接线；测试子目录不存在、为空、仅非图片、根目录有图、切换主题与重新启动。

### V2-08 / P2：歌词卡在 V2 只是媒体信息卡，空封面不会复位

o/ia.ˏ() 只新增封面、标题、歌手更新；当前选定包为 com.byd.mediacenter 时沿原逻辑直接返回。`tv_lyrics_content` 在整个 V2 smali 中只有资源字段声明，没有更新调用，正文一直是布局中的“歌词功能准备中”。

封面仅在新 Bitmap 非空时 setImageBitmap，空值不会清除旧封面，因此切到无封面曲目可能继续显示上一首封面。关闭歌词卡仅隐藏 View，不改变媒体回调接线。

处置：把“媒体元数据卡”和“网络同步歌词”拆成两个功能；明确空数据、换播放器、会话销毁时的复位行为。V2 不存在后来的 LRCLIB 线程/500ms 歌词循环，不能把那些问题算到 V2。

## 5. 相对低风险且应单独保留评估的改动

- 沉默版高德：设置候选、地图卡点击、回家/公司 URI 启动三处一起变更，必须一起验证，不能只保留列表文本；不涉及底层车辆控制。
- B站播放页和 `supports_fullscreen` 判断：属于跨应用栏显示规则变化，需播放页→普通页→HOME 回归；事件频率扩大需看日志，不能仅凭代码断言产生风暴。
- 时钟大小、卡片透明度和间距：主要是视觉变化；px/dp 混用影响不同密度布局，但没有据此证明其导致随机崩溃。
- Theme.NavDemo 的 translucent 属性影响使用该主题的窗口上下文，不能当成只改变某张卡片；应在布局/窗口整改之后单独验证。
- assets、native 库、车辆 manager/IPC 的未变部分不应被本轮无证据重写；新弹窗的按钮只是转发既有底栏点击，不代表获得扩展车辆控制的授权。

## 6. 修订后的交接执行顺序

1. 先阅读本文及原版/V2差异，不再把 V2 当作“代码稳定无需审计”的起点。保留 V2 作为当时功能范围的已验证回滚成果。
2. S1 仍从原版/零修改参考树派生：确认没有带入 V2 的 disabled 状态栏创建、错误反射、布局覆盖、模式键强制拦截。已经存在的 S1 候选只补审，不在本轮重建或安装。
3. 原版车辆控制/车辆信息布局与全部使用方作为回归保护项；新空调功能必须使用独立资源，最初仅验证开关窗口，不操作车辆控制按钮。
4. S2 先修复设置窗口关闭与目录一致性，再接入唯一可取消的壁纸轮播。不能只修 Runnable 而保留 getRootView().setVisibility(GONE)。
5. S3 同时审计模式键配置生效、广播来源、跨入口去重、单 Dialog 生命周期和旧车控面板兼容。
6. S4 单独恢复媒体元数据卡及空值复位；S5 才考虑网络歌词。后续 V3 的功能继续按主方案逐项回引，不整体移植。
7. 每项保留“原版行为→V2变化→静态证据→预期行为→实车结果→回滚”记录；未实车验证不得归档到正式交付目录。

## 7. 验收补充清单与边界

| 场景 | 必须验证的结果 |
|---|---|
| 原车辆信息/车控面板打开 | 旧 RecyclerView/vehicle_content 等契约存在；无 inflate failed/空引用；不点击底层控制 |
| 状态栏启动、切应用、回 HOME | 原创建路径有效；图标更新；没有错误字段反射和重复/缺失的窗口 |
| 设置→改轮播→重新打开 20 次 | 旧设置窗口真正移除；窗口/根 View 数量不持续增长 |
| 模式键四种设置 | 自定义关闭、保持原功能、播放暂停、空调映射分别符合设置 |
| 媒体中心普通窗口变化 | 不无故新建空调 Dialog |
| 空调连续开关/服务重建 | 单实例、可关闭、释放旧服务；不发送新的车辆命令 |
| 轮播退出/销毁/主题切换 | 旧任务取消，目录策略一致；后台无多余轮播 |
| 换歌且新曲目无封面 | 旧封面复位；标题/歌手/正文状态一致 |

最小日志关注：`AndroidRuntime`、`FATAL EXCEPTION`、`VerifyError`、`NoSuchMethodError`、`VehicleCtrlMgr`、`inflate failed`、`WindowManager`、`WindowLeaked`、`BadTokenException`、`NavBarSvc`、`WidgetBarMgr`、`MainActivity`。同时保留完整原始日志，不能只保存关键词筛选结果。

尚未完成：实车复现以上路径、定位用户当前故障与具体缺陷的因果关系、完整中间版本逐包时间线审计。端点 diff 无法显示中间版本加过又撤回的改动；也不意味着对所有未变第三方方法做了人工逐行证明。以上限制不影响本轮已经确认的代码/资源问题。
