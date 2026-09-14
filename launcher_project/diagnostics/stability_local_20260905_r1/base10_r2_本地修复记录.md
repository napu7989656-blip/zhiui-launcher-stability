# BASE-10 r2 本地修复记录

## 42. BASE-10 r2 主题读取结果返回所属主线程（2026-09-08，未实车）

- 当前本地检查点 `D:/apk/zhiui-stability-local-base10-r2.apk`，SHA-256 `EF61C11436EDB43E4AF914D041016B3985453EFC6A0B1B94D9726A73AD3C03E8`，父版本 BASE-10 r1。r1 队列保护继续保留，r2 增加系统主题结果的主线程投递与服务身份检查；BASE-10 的线程上限/代次/中断仍未完成。
- 原 ff.Ύ 创建 QSSyncTheme 后进入 ie selector6，查询系统主题后直接写 Launcher 偏好，并经全局 NavBarService.O0 调用 Ύ(Z) 更新服务/桌面窗口。实际旧指令测试已复现：旧控制器 Context 的结果会写旧 Context 偏好，却刷新替换后的新 Service。唯一 ff 分配点是状态栏创建方法，传入的 Context 已逐寄存器确认就是所属 Service。
- 只替换 selector6 中的发布段：保留查询、系统主题映射、Cursor 成功/异常关闭；新增 QuickSettingsThemeApply 投递到该 ff 的主线程 Handler。执行时先检查永久销毁、Context 类型及其与当前 O0 的同一对象身份，再核对查询后观察到的主题偏好仍未变化，才更新偏好与所属 Service。原 07:00～19:00 自动浅色时段和 0/1 固定模式语义保留。
- 新 UI 发布捕获 Exception 并记录，保留原查询调用原本的异常隔离，避免将此前工作线程的可恢复错误直接变为主线程崩溃。没有把系统查询搬到 UI 线程。偏好值校验不是查询代次，无法识别同一服务内 A→B→A 的变化，后续继续处理。
- 源码和成品各 19 项实际 smali 分支通过：固定/自动主题边界、销毁/替换/缺失 Service、非 Service Context、偏好变化、非法模式、偏好/Calendar/窗口异常及只投递不在后台写入。继承两条所属队列的6项分支和 BASE-09 的60入口/15清理分支通过。测试逐条执行实际指令，外部偏好/窗口/队列为隔离替身，不是 Android ART 或真实车机。
- 两个允许文件变化、累计59个文件均可归属；所有其他 ie selector 和原查询/Cursor 路径经过精确恢复比对。全量重建、zipalign、同开发证书V2/V3验签、aapt/apkanalyzer、最终apktool回解通过；22份保护APK哈希不变，原资源声明保留，Android29声明级候选仍127且无新增。JADX新helper输出与smali一致；DEBUG日志只有既有 NavBarService.Ε(ImageButton,String) RegionMakerVisitor 错误，未隐瞒非零退出。
- 证据：`base10_r2_verification.json`、`base10_r2_branch_tests_final.json`、`base10_r2_manual_audit.json`、`base10_r2_theme_manifest.json`、`base10_r2_cumulative_content.json`、`base10_r2_cumulative_signature_check.json`、`logs/base10_r2_jadx_theme_debug.txt`。
- 下一步继续只读工作并发限制、重复查询/面板代次、等待中断及其他后台回调调用方审计，然后完成 V2/V3 功能修复回引和总本地门禁。未连接车机、未安装、未执行外部/车辆命令，未进入正式交付目录；原包、V2及全部旧检查点保留。
