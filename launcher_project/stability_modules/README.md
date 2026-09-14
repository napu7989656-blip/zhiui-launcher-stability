# 智UI稳定性自有模块

这些类是为现有 APK 增量补丁新写的可维护源码，不是将 JADX 输出当作原始源码重编译，也不是 Launcher 重写。

## 已接入的 Java 模块

- `src/com/byd/launcher/stability/WallpaperExecutor.java`：替换壁纸 Adapter 的 `Executors.newFixedThreadPool(2)`，两个工作线程、四个最新等待任务，满时丢弃最旧等待任务，不在调用线程解码。仅原 Adapter 的两处主线程 bind 入口提交，销毁沿用 `shutdownNow`。
- `src/com/byd/launcher/stability/WallpaperDelivery.java`：后台解码完成后，投递一个 UI 结果并可中断地等待处理完毕；UI 调用直接执行，不等待自己的消息队列。`finally` 在回调成功或抛异常时释放等待；关闭线程池时中断等待、移除对应回调、恢复中断标志。因此暂停 UI 处理时每个 Adapter 最多两个待发布结果，而不是只限制尚未开始解码的队列。

旧架构已有的 Handler/Adapter 所有权、关闭时清队列和 volatile 状态检查仍是上述模块正确接入的前提。真实 Android Handler 行为和 native 解码中断响应不能由 JVM 测试替代。

## 测试和构建证据

- `test/WallpaperExecutorTest.java`：真实 JVM 线程复现旧队列积压；10,000 次提交保持两个工作线程、最新四项等待；关停、中断和晚到提交。
- `test/WallpaperDeliveryTest.java`：实际模块源码和真实 CountDownLatch/线程，使用 `test/android/os` 内的 Handler/Looper 队列替身。覆盖 UI 暂停/恢复、10,000 次提交、销毁先清队列、拒绝投递、中断先于/发生在投递中、异常回调和 UI 直接调用。替身不进入 D8 输入或 APK。
- 编译驱动：`../stability_compile_wallpaper_executor_20260906.ps1`、`../stability_compile_wallpaper_delivery_20260906.ps1`。固定 JDK/D8/Android 29 路径，Java 8 字节码、D8 min-api 24；输出已存在时拒绝覆盖。重复构建需新建输出版本。
- Delivery 首轮 r1 遇到 JDK zipfs 关闭 Android SDK jar 时的路径访问错误，虽然进程退出 0 且测试通过，仍不采用该轮产物。r2 将 SDK jar 字节相同的副本放在独立模块目录，校验 SHA 后重新编译/测试/D8，输出无该错误。未修改 SDK 目录或申请扩大权限。
- D8 输出用只有 Manifest 和自有 classes.dex 的临时非安装容器交给 apktool 解码；这是代码检查容器，不是能运行的测试 Launcher。最终应用仍通过项目标准 apktool→zipalign→签名→最终回解链构建。
- 实际证据目录：`D:/apk/launcher_project/diagnostics/stability_local_20260905_r1/modules/wallpaper_executor_r1` 和 `.../wallpaper_delivery_r2`。

最终 APK 中的模块需与上述 D8→smali 输出语义一致，再用 JADX 导航交叉核对。源码测试通过本身不代表打包、ART、厂商接口或实车验证通过。

## PolicyControlReadOnly

- 源码 `src/com/byd/launcher/stability/PolicyControlReadOnly.java`；编译 `../stability_compile_policy_readonly_20260906.ps1`，独立测试替身 `test/policy_stubs`，实际测试 `test/PolicyControlReadOnlyTest.java`。
- 识别当前 APK 已核实的结构化 policy_control 写命令；绑定设置界面只读开关并显示当前残留。双层执行入口和 selector 接线由 `../test_base06_smali_20260906.py` 验证；不是通用 shell 沙箱。
- BASE-06 r1 的最终回解和 JADX 已核对，不携带 Android 测试替身。真实车辆策略与 OEM 合成后续实车验证。


## StatusBarResources

- 源码 `src/com/byd/launcher/stability/StatusBarResources.java`，编译脚本 `../stability_compile_status_resources_20260906.ps1`，隔离替身 `test/status_stubs`，实际测试 `test/StatusBarResourcesTest.java`（44 项断言）。
- 只有确认窗口已分离或监听已注销时才向所有者报告可清空；普通失败返回 false，fatal Error 保留重抛。Android29 的 removeViewImmediate 仍可能延迟移除，不能仅凭 isAttachedToWindow=false 跳过移除。
- Service 字段接线在 `../stability_base08_patch_20260907.py`，实际源码和最终包分支由 `../test_base08_smali_20260907.py --final` 验证。测试替身不进入 DEX。此模块只涉及 Launcher 窗口/监听资源，真实厂商 WindowManager 仍待实测。



## 快捷设置永久清理（BASE-09 r3）

QuickSettingsResources.java：队列、观察者、所属面板动画/窗口、注册及当前布局 observer 清理。stability_compile_quick_resources_20260908.ps1 生成 quick_resources_r4，43 项隔离 JVM 断言通过；实际守卫/接线/清理分支见 test_base09_smali_20260908.py --final。两个早期 D8 失败输出保留，正式模块使用 classpath JAR；测试替身不打包。


## 快捷设置所属主线程队列（BASE-10 r1）

QuickSettingsHandler.java 用现有 smali QuickSettingsLifetime 检查投递/执行者。stability_compile_quick_handler_20260908.ps1 执行25项JVM断言并生成 quick_handler_r1；编译期API和框架替身不进入DEX。test_base10_smali_20260908.py --final 将编译后的handler与实际lifetime指令一起验证。仅处理永久销毁，尚不含打开代次/线程池限流。


### BASE-10 后续只读线程池模块（2026-09-08，尚未接入 APK）

新增可维护 `QuickSettingsReadExecutor.java`，Java8/Android29 编译、D8 min24、仅三项自有类的 apktool 回解和 JVM 10,000 次提交/并发、队列替换、所有者取消、销毁、异常及拒绝测试通过。设计为进程内共用2个工作线程、8个等待读取；同一控制器同一类别只替换仍在队列的旧读取，取消时只移除该所有者等待项。已运行任务最多受全局2线程限制，取消等待项不等于中断native或已发送请求。

这是独立模块验证结果，尚未改动当前 BASE-10 r2 APK，也不能据此宣布 Launcher 所有读取已限流。下一步逐个核对读取 producer/selector，接入取消和实际调用点，再完成成品校验；用户操作分支不能按过期状态读取统一丢弃，面板/查询代次仍待修。当前本地检查点仍是 BASE-10 r2，证据 `base10_read_executor_module.json` 与 `modules/quick_read_executor_r1/`。未连接车机。


BASE-10 r4（2026-09-08）：QuickSettingsReadExecutor现已接入九处已审计读取（此前“尚未接入”为历史状态）。相关接线、分类和成品证据见base10_r3/r4记录；generation与其他后台线程仍待修。


BASE-10 r5/r6：LatestRead.java提供独立状态/不可复用ticket，latest_read_r1模块10,014项JVM断言通过；NavVolumeApply小范围smali由stability_base10_nav_patch_20260908.py维护。九处有界读取仍在，类别已由r6业务用途测试纠正（仪表初始化1，导航初始/轮询2）。read_key_regression_r1使用生产线程池真实线程复现父版本冲突并验证修正。只对导航接入查询有效性，不代表其他读取也已处理。


2026-09-09当前本地检查点BASE-10 r7：InstrumentReads生产模块接入仪表初始化/刷新/缓存预填/重试及关闭/拖动失效，JVM与源码/成品检查通过；整个本地阶段仍未完成，继续磁贴与剩余项目。详见本地整改进度.md和base10_r7_本地修复记录.md。


2026-09-09新增：TileSlot/TileBatch每磁贴单个待结果（20,024 JVM断言）；QuickSettingsReadExecutor增加同一所有者/类别下对象身份子键（31,044断言）；ReadAfterAction只控制界面读取等待，匹配原15秒回调超时（50,012断言）。所有模块仅编入自有生产类，框架/查询替身不入DEX。不是ART/车辆验证。
