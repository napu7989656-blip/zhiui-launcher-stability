## 39. BASE-08 状态栏失败回滚与重试所有权（2026-09-07，未实车）

- 独立候选 `D:/apk/zhiui-stability-local-base08-r1.apk`，SHA-256 `CDBEED98DA6D06B9EDE0FD9864C469E2F20A68A3E5C344996BDD0E8C9ACAFD03`，父版本 BASE-06 r1。它继续包含此前壁纸队列/回调和主线系统策略隔离补丁，仍不是 V2/V3 全功能交付版。
- 原 `NavBarService.Ϡ(int)` 在 WindowManager.addView 成功后若初始化失败，仅将状态栏字段置空；实际指令测试复现已挂载根 View 丢失。现入口拒绝销毁服务、统一捕获创建过程异常并清理自己拥有的状态栏/手势层和监听。移除失败时保留引用并推迟重建，晚到状态刷新不再重挂失败或已销毁服务的窗口；已有附着或已设置 parent 的窗口直接复用。
- 同时复现原创建代码会反复替换快捷设置控制器并再次投递预热。现控制器由同一 Service 复用；本次不将普通关闭方法误作完整销毁。BASE-09 单独继续审计控制器永久销毁、延迟回调和异常隔离。
- 新增可维护 Java `StatusBarResources.java`，逐项处理窗口移除、Handler 回调取消、广播/网络监听注销；未注销成功的引用保留供下一次重试。窗口是否已完成首帧附着不能替代 WindowManager 的注册状态；已核对本地 Android29 WindowManagerGlobal 第 420/480/514 行。平台厂商实现仍需后续实测。
- Java 模块 44 项断言通过；实际源码和最终 smali 各 20 项分支测试覆盖六种资源清理失败/重试、已挂载/待附着窗口复用、销毁/晚到刷新守卫、初始化异常回滚及控制器唯一预热。异常阶段以外部调用替身注入，并非实际 Android inflate 或 WindowManager 故障注入。继承的 14 项壁纸结果、生命周期/空数据、8 项前序回归及策略入口/设置分支通过。
- 全量构建、zipalign、同开发证书 V2/V3 验签、aapt/apkanalyzer 和最终 apktool 回解通过。本次两文件变化，服务 119 个其他既有方法保持原方法体；累计 21 个文件均可归属，原资源声明与共享类其他 selector 保留，22 份保护 APK 哈希不变，Android29 声明级候选仍为 127 项且无新增。
- JADX 自有模块退出 0；父包和候选服务均退出 3，各有一处相同旧 ImageButton/String 方法的 RegionMakerVisitor 错误。详细导航可显示新创建/释放流程，但部分 Java 不完整；精确行为以已通过对照的 smali 为准，不把反编译受限当作 ART 通过。证据 `base08_r1_manual_audit.json`、`base08_r1_branch_tests_final.json`、`base08_r1_verification.json`、`base08_r1_cumulative_content.json`、`base08_r1_cumulative_signature_check.json`。
- APK 组件、权限、原布局、车辆接口和 native 未改变。没有连接、安装或操作车机，未进入正式交付目录。回滚参照仍为保留的已验证 V2 和原车桌面；完整本地门禁后，需安全停车验证状态栏开闭、应用往返、服务重建、窗口数量及日志，不操作底层车辆控制。
