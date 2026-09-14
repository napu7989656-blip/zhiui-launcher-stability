# BASE-10 r1 本地修复记录

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
