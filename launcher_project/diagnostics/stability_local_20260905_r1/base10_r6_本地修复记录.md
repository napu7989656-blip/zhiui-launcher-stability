# BASE-10 r5/r6 导航读取有效性与队列类别修复（2026-09-08）

当前独立检查点：`D:/apk/zhiui-stability-local-base10-r6.apk`，SHA-256 `694318ADE4019A201B31C4BB9B547B87469FB34CEA1A0DE156A77AECA6754327`。父版本 r5 `02B3B09293CA971CDA75EBFCFE226D10CC50FCC77783491EF460DC9ACD356E23`；r5 父版本为 r4。两个新包及所有旧包保留，均未实车，不进入正式交付目录。

## 功能变化

1. r5：每个快捷设置控制器持有独立 LatestRead 状态，导航初始化及轮询在构造任务时捕获不可复用的查询标识和所属面板根视图。普通关闭起始、最终关闭、永久销毁使既有标识失效。标识不持有控制器，不使用全局所有者表。
2. 两处导航 worker 的缓存写入改到所属主线程发布：先核对永久销毁、所属 Service 与当前 Service 身份、查询标识及活动/预备根视图，再同时提交导航缓存和原显示回调。查询方法、负值跳过、原回调 selector（初始化2、轮询0）和仪表 worker 完整保留。没有新增车辆请求。
3. r6：只改导航轮询的一条队列类别常量 1→2。经实际 packed-switch 复核，je selector1 是仪表初始化，selector0/default2 才是导航；此前按分配顺序推定的用途标签错误。正确映射为仪表初始化 key1、导航初始化/轮询 key2，其余类别保持原状。

## 验证与已纠正的检查缺口

- LatestRead 生产 Java：10,014 项断言，包括真实延迟线程、10,000 次替换、关闭失效、所有者状态隔离；D8 min24 后仅3项自有类进入 DEX，测试替身不打包。
- r5/r6 的源码和各自最终 APK 回解分别执行23项导航有效性/乱序/关闭/根视图/Service身份/异常分支。原缓存-界面同时回退到旧值3的问题已复现；现在新值9保持，旧任务不能更新缓存或界面。关闭挂钩按实际插入指令测试，不等于执行了完整 Android 开关窗流程。
- 继承九处读取提交、主题19项、队列6项、60入口与15清理分支。源码恢复测试只撤销清单中的已知修改，即可与各自父版本逐字匹配；最终指令仅允许调试信息、标签命名及既有归一化差异。
- 原有接线测试只验证了“参数与当时清单一致”，没有验证类别对应的业务用途，因而漏掉仪表/导航队列冲突。新增测试从实际 selector 分支及提交常量提取用途/类别，再交给生产 QuickSettingsReadExecutor 的真实 JVM 工作线程执行。r5 复现只留下 old_nav/new_nav、仪表任务被替换；r6 保留 instrument/new_nav。证据 `modules/read_key_regression_r1/jvm_tests.json`。旧检查记录保留，早期“所有类别正确”结论由本记录纠正。
- 两包均完成 apktool build、zipalign、项目开发签名验证、aapt/apkanalyzer、最终 apktool 回解。r5 变化6文件，r6 只变1文件；累计66文件均可归属，22份保护APK哈希未变，原资源声明保持。Android29声明候选127且无新增；这些候选的全部人工调用方复核仍未完成。
- JADX 新 NavVolumeApply 输出与最终 smali 对照通过；r6 ie 输出显示 key2 导航轮询。JADX 两次非零退出均在 DEBUG 日志定位到既有 `NavBarService.Ε(ImageButton,String)` 的 RegionMakerVisitor 错误，不能把它称作零错误反编译。

## 关键文件与范围

- 补丁：`launcher_project/stability_base10_nav_patch_20260908.py`、`stability_base10_read_keys_patch_20260908.py`；实际工作树 `worktrees/base10_read_keys_r6`。
- 自有模块：`launcher_project/stability_modules/src/com/byd/launcher/stability/LatestRead.java`；导航发布小范围 smali 由前述补丁脚本维护。
- 回归：`test_base10_nav_smali_20260908.py`、`test_base10_read_keys_20260908.py --final`、`stability_run_read_key_jvm_20260908.py`。
- 成品证据：`base10_r5/r6_verification.json`、对应 `branch_tests_final`、`cumulative_content`、`cumulative_signature_check`，以及 `logs/` 的构建/回解/解析/JADX记录。

此次只解决导航的同类别读取覆盖与关闭前结果失效。仪表/磁贴缓存和结果代次、主题偏好 A→B→A、用户操作后迟到读取、背景玻璃任务与中断、完整调用方覆盖及 V2/V3 功能回引仍待完成。两个正在运行的 native 请求仍可能重叠，未被强制取消；Handler积压/真实主线程时序仍需整体审计。UI发布发生Exception时会记录并停止传播，不保证已经写入的缓存回滚。

这些验证使用生产 Java 和实际 smali，Android/查询/队列/控件边界为隔离替身；不等于 ART、真实 WindowManager、OEM权限、native 或实车验证。未连接车机、未安装或执行查询。

## 后续实车项与回滚（当前不执行）

全部本地门禁通过后，由用户安全停车执行：只打开/关闭快捷设置，观察导航音量显示，不拖动滑块；快速关闭重开并观察读数是否回退、旧面板是否更新；采集定向 QuickSettingsMgr/AndroidRuntime 日志、窗口与线程快照。预期无旧值回写、无叠窗或异常。失败先保存表现/日志并回原车桌面；包回滚以已验证 V2 为参照，安装前核对证书/版本及配置兼容，不卸载、不清数据。r5/r4仅用于本地对比，不作为已验证实车回滚承诺。
