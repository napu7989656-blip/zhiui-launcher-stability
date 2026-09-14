# 本地证据与新增发现

## 已完成的核对

- 22 份留存 APK 已重新计算哈希、验签；20 个不同哈希的 APK 已用 apktool 3.0.2 在 references 下重新解码。全部解码退出 0，decode_warnings.csv 未发现警告。
- 包名均可对应 com.byd.launcher、versionCode 1；中文文件名的 aapt 原始读取失败来自 Windows 路径编码，原版三份文件哈希相同。该工具失败保留在日志/清单中，不算 APK 损坏，也不伪造为该命令通过。
- file_diff.csv 覆盖三个主要端点、零修改→S1、V3 中间包及 r1 修订。原版→V2 98 个文件差异（新增 9、修改 89）；V2→V3.11 22 项；零修改→S1 仅 apktool.yml 输入记录不同。原版→S1 的 60 项含打包、图片编码及字段初值差异，不表示 60 项业务功能修改。
- method_coverage.csv 记录原版→V2 38 项新增/修改方法、V2→V3.11 53 项，包含构造方法和合成访问器，不能与旧审计“18 个既有修改方法”的不同口径直接相减。清单目前仍保留待逐项人工复核状态，不声称全部人工审查完成。
- 本轮为 V3.11 新生成 JADX 导航输出，CLI 退出 3、报告 6 个反编译错误；它们不是 APK 运行异常，相关准确行为以 fresh smali 为准。原版与 V2 的既有 JADX 只用于交叉理解。
- layout_contract_findings.csv 在 V2/V3.11 各找到 18 项原布局 ID 删除/控件类型变化，集中于 vehicle_control_panel；S1 无这类差异。每项已索引 smali 使用方，还需按页面上下文逐一确认；36 项候选不等于 36 个独立崩溃。
- historical_log_index.csv 已收录工作区根目录 8 份零修改期文本日志及哈希，所选错误模式无命中。覆盖范围是这 8 份日志；不能据此说后续 V3 或当前车机没有问题。其他位置/版本日志仍待补索引。

## API 检查边界

使用本机 Android 29 android.jar 的 4530 个类声明，与应用全 smali 的字段/方法和父类关系进行静态签名检查。新增差异复现三处错误目标：MainActivity.秃() 不存在，ViewManager 没有 removeViewImmediate(View)，V2/V3 均有残留。它们位于失效/不可达的状态栏绑定链，不能直接认定发生了实车崩溃。

原版另有 127 条初筛候选，主要涉及构造器继承解析和 Android 29 之后的 API。扫描器没有实现 ART 完整验证或路径可达性分析；这些条目不能机械转为补丁。构造器/方法解析还涉及运行时规则，参阅 [AOSP 方法验证实现](https://android.googlesource.com/platform/art/+/master/runtime/verifier/method_verifier.cc)；本轮未取得目标厂商 ART 源码，不据通用源码宣称厂商运行验证通过。Android 版本分支、包装方法及调用方需要继续核对。

## BASE-01：原壁纸全局回调保留页面（已做单项本地修复）

原版 MainActivity.onCreate 将 new o/y7(this,1) 存到 o/ak.ͻ 静态 Runnable；o/y7.ͱ 是 Activity 强引用。onDestroy 原先清弱引用和 Handler，却没有清此静态回调，故最后销毁的页面可一直保留到下一次覆盖回调。o/ak.ͳ(Bitmap) 还读取该 volatile 字段两次，销毁时清空会引出空引用竞态。

补丁只改变 MainActivity.onDestroy、MainActivity.ͱ() 和 o/ak.ͳ(Bitmap)：按回调实际 owner 清空；通过原有 volatile 销毁标志阻止晚到调用更新窗口；只读取一次回调。旧页面销毁不清新页面的回调。未改变壁纸轮播、车辆控制、权限、资源或窗口架构。

test_base01_smali_20260905.py 执行实际方法指令的受限分支语义，系统调用为记录替身。六例覆盖旧引用释放、新页面引用保留、空回调、已销毁窗口不更新、活页面仍更新、读后清空；原版三个预期失败，修改源码与最终 APK 各六例通过。此测试不是 Android/ART 仿真，线程时序、UI 合成与实车内存仍待验证。

## BASE-02：原壁纸 Adapter 的释放入口未接上（本地单项通过，未实车）

原版 MainActivity.onDestroy 未调用 ViewPager2.setAdapter(null)。o/ak.onDetachedFromRecyclerView 中有 ExecutorService.shutdownNow，但应用销毁路径没有显式接入。已交叉核对 ViewPager2.setAdapter→RecyclerView.setAdapterInternal→Adapter.onDetachedFromRecyclerView 的库内链。需继续修复销毁时解除 Adapter，并处理 Adapter Handler、仍在运行的解码任务和晚到结果；不能仅新增 shutdownNow 就标记全部释放完成。

2026-09-06：BASE-02 r1 已接入解除 Adapter 和 Handler 清理，源码/最终包销毁与重复销毁分支通过；晚到回写另在 BASE-04 修复，原生解码的实际中断和长期资源释放仍需实车证据。

## BASE-03：原视频封面提取异常路径缺少释放（本地单项通过，未实车）

原版 o/sj.run selector=0（JADX RunnableC1391sj.java:45～66）创建 MediaMetadataRetriever，在 setDataSource/getFrameAtTime 后顺序 release；异常分支直接返回，未有 finally 释放。需以 smali 异常区间最终复核并做单项补丁；后续完成前状态为待修复，不调用任何车载控制接口来测试。

2026-09-06：BASE-03 r1 已用 VideoThumbnail 小模块覆盖已构造对象的成功/失败/fatal 退出释放；源码和最终包七例通过，非壁纸 selector 保持一致，详见 base03_r1_verification.json。

## V3 网络歌词补充（待修复）

- onTrackChanged 先改 currentKey，再以 800ms 限流决定是否发请求；时间内来的新曲目可能没有请求，也没有延后补发安排。
- lastRequestedKey 与当前 key 的组合可能阻止某些失败/空结果后的同曲重试；A→B→A 的旧 A 请求仅凭相同 key 仍可能回写，需代际标记。
- onPlaybackStateChanged(null) 直接返回，原播放状态可能继续保留；o/y8 在检查管理器销毁标志之前已调用桥接，晚到回调可能重新激活它。
- readAll 没有响应大小上限，读取异常时缺少可靠流关闭；请求线程无并发/队列上限。定时刷新及静态 Dialog 问题仍按旧审计登记。
- isSameTrack 对空候选标题的 contains 判断、纯非中英文曲名归一化以及歌词首时间点之前的显示，需补边界用例，当前不宣称为实车根因。

以上说明本地检查尚有剩余工作；本地总门禁未通过，不进入车机阶段。

## 2026-09-06 产物核验更正

BASE-01 r1 的分支测试虽然通过，但全量核验发现复制脚本按任意层级目录名 build 排除，误漏 app-metadata.properties；完整门禁失败。r1 保留为失败记录。现已限定只排除根目录 build/dist，新建 r2 源树并重新构建/签名/回解；r2 的 base01_r2_verification.json 确认只有两个预期业务文件变化，资源、Manifest、native、assets 与元数据完整保留。r2 才可作为开发父版本，仍不是实车通过或全功能稳定版。

## BASE-04/05：晚到结果与等待队列（本地分项通过）

BASE-04 r1 将 o/sj 视频与 o/tj 图片的解码结果交给 WallpaperFrameApply，在主线程校验当前 Adapter、volatile 关闭标志与控件文件绑定后更新；保留原视频普通标签。14 项分支、销毁/空数据守卫与前序用例通过，旧版错误回写可复现。BASE-05 r1 集成自有 Java WallpaperExecutor，将原本无界的解码等待队列改为两个工作线程、四个最新等待项；真实 JVM 验证 10,000 次提交和关停，最终 DEX 与源码/D8 输出核对。

累计 BASE-01～05 为 10 个可归属文件，原资源声明完整保留，共享 o/sj 的其他 selector 未变，22 个保护 APK 哈希未变。Android 29 声明初筛仍是原版 127 条候选，没有新增项；这不是完整 ART 或全原版 API 调用方审计通过。

## BASE-06：原版也有全局 policy_control 写入（静态确认，待隔离）

本轮纠正“基线分支没有全局策略写入”的过宽表述。原版/零修改与当前 BASE-05 都包含两种实际命令：`settings put global policy_control immersive.status=com.byd.launcher` 和 `settings put global policy_control null`。o/llI.run 的启动分支按 oem_statusbar_enabled 选择写入或清空；o/ea.run 的初始化/熄屏退出路径、o/y9.run 熄屏进入、o/lII.run 的显示/隐藏以及 o/zk.onCheckedChanged 设置路径也可到 o/c0.execAdbCmd。o/c0.ͳ(String) 对 policy_control 的 return 只是过滤命令日志，不能误当作阻止执行。

修复须按 L11 独立单元隔离所有实际写路径、保留只读残留检测，并让设置 UI 明确反映尚未修改系统策略；不得只拦截命令却继续显示成功或改偏好。不能顺带修改其他 ADB 命令、键盘设置、车辆控制或原车 HOME 恢复。全局策略既有值尚未读取，本轮不连接设备、不执行上述命令。

## BASE-07：结果发布队列背压（本地单项通过，未实车）

BASE-05 约束的是解码线程池的等待队列；WallpaperFrameApply.submit 仍是一结果一 Handler.post。若 UI 阻塞而工作线程持续完成任务，主线程结果队列理论上仍可积压。弱引用和销毁守卫能防旧页面回写，不能证明结果 Bitmap 数量有界。下一项应限制每个 Adapter 的待发布结果或对解码线程施加可取消的背压，并测试 UI 暂停处理、销毁/清队列竞态、恢复后保留当前文件及工作线程退出；不得使用 UI 线程等待工作线程的方式制造死锁。

2026-09-06：BASE-07 r1 已加入自有 Java WallpaperDelivery：非 UI 解码线程投递 Pending 后等待其完成，回调 finally 总是 countDown；销毁线程池使等待中断、移除对应回调并恢复中断标记。UI 调用直接执行。两个解码线程最多持有两个待发布结果，结合 BASE-05 最多另有四个等待解码任务。实际 Java/JVM 用例覆盖 10,000 次提交、暂停/恢复 UI、先清队列再 shutdownNow、投递拒绝、投递前/投递中中断、异常回调及 UI 调用。最终源码→D8→smali→签名 APK→回解和 JADX 核对通过；14 项实际结果分支/销毁守卫及旧回归在源码和最终包通过。

累计十二个文件均可归属，原有资源声明和 o/sj 非壁纸 selector 未变，22 个保护 APK 哈希未变，Android 29 签名初筛没有相对基线新增告警。真实 Handler/ART/native 及全计划仍未通过，BASE-06 和 V2/V3 本地任务继续保留。

## BASE-06 最终核验归档

已通过源树与最终 APK 七文件增量/十九文件累计核验、签名和 Android29 无新增候选检查。完整记录见 PROJECT_MAP 第 38 节；当前仍有 BASE-08 状态栏失败回滚和其他功能审计待做。


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


## 46. BASE-10 r7 仪表读取、缓存和重试归属（2026-09-09，未实车）

当前本地检查点 `D:/apk/zhiui-stability-local-base10-r7.apk`，SHA-256 `A6F8582C03408F2B8FD94780944DCC114D372014A02C80E4B32DF6A2F0D00806`，父版本r6保留。仪表初始化je selector1与刷新ie selector28共用每控制器独立InstrumentReads状态；查询仍在原有有界池，原getBacklightBrightness、合法范围12～22、亮度换算和操作请求体保持。正常初始化成功也更新同一缓存，避免保留旧刷新缓存。

缓存/原显示回调与重试计数统一在所属主线程检查查询、生命周期、Service和面板身份后更新。若已有活动面板，仅接受该活动面板，不能让旧预备面板通过身份检查后借de更新新活动面板。原缓存预填保留，检查缓存值/生命周期；开始新查询不使有效预填失效。两个普通关闭入口、永久销毁、仪表拖动开始/结束均使旧结果失效。未改变用户调节发出的请求或换算。

重试回调由模块保存和取消，保留150/350/700/1200/2000ms五级等待；无效刷新才重试，初始化无效不新增重试。成功结果清零计数；投递失败不留下等待标志、不消费重试次数；旧回调即便移除失败也不能复活旧查询。重复结果、异常和关闭后结果都经过有效性检查。每控制器分别至多保留一个待结果、一个待缓存预填、一个待重试引用。

生产Java实际JVM线程与10,000次连续提交共30,213项断言通过；源码和成品真实host/构造/提交/拖动分支及原导航23项、九处提交、主题/队列/60入口/15清理回归通过。查询和用户操作通过精确恢复比对，未执行厂商请求。首次构建发现拖动补丁也插入packed-switch载荷，失败日志保留；修正为只插入实际首个标签定义并新增载荷结构检查后构建通过。

构建、zipalign、开发签名、aapt/apkanalyzer、最终apktool回解及差异通过：增量11文件，累计73文件可归属，22保护APK哈希/原资源声明保持，Android29候选127无新增。JADX Host退出3仍是已知Service方法错误；InstrumentReads退出0但匿名发布回调呈现空try，已核对最终InstrumentReads$2 smali，commit与delegate位于RuntimeException保护范围内。JADX不作为可编译原码或准确行为依据。

证据：`base10_r7_verification.json`、`base10_r7_branch_tests_final.json`、`base10_r7_manual_audit.json`、累计检查、`modules/instrument_reads_r1/jvm_tests.txt`、构建/回解/JADX日志。可维护源码 `launcher_project/stability_modules/src/com/byd/launcher/stability/InstrumentReads.java`；接线脚本 `stability_base10_instrument_patch_20260909.py`，新增InstrumentReadHost smali只桥接既有所有者字段/Handler。

仍继续本地工作：磁贴缓存/结果、SOC/主题代次、等待中断与操作回调、玻璃后台任务、V2/V3回引、完整调用方/API人工复核及组合门禁。r7不是整个BASE-10或全计划完成，测试不是ART/真实窗口/native。未连接车机、未安装、未进入正式目录。

实车仅在全部本地门禁通过后，由用户安全停车观察面板反复开关和仪表读数同步；本地通过后再给最终最小步骤。失败保留QuickSettingsMgr/AndroidRuntime日志和画面，先返回原车桌面，按签名/配置兼容核对回滚已验证V2；不卸载、不清数据、不做车辆控制试验。


2026-09-09：当前检查点BASE-10 r8b，磁贴读取/缓存/说明文字分项通过；SRC/成品95项及累计85文件检查，完整本地任务仍未完成，下一项SOC滑条。详见base10_r8b_本地修复记录.md。
