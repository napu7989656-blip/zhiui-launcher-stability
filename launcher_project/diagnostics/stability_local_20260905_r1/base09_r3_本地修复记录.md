# BASE-09 r3 本地修复记录

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
