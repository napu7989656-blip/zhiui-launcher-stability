# BASE-10 R22 媒体 URI 有界读取与异常清理（2026-09-13）

当前分项本地通过，完整计划未完成，未实车。父版本R21及所有恢复路径保留。

APK：D:/apk/zhiui-stability-local-base10-r22.apk
SHA256：`0ECE7827499211583DEBE73343F2EBAC3CBE7FCC1DCA76322CE095C9D2188E83`
工作树：worktrees/base10_media_uri_r22；最终回解：final_redecode/base10_r22。

## 改动与功能影响

原a9 URI读取入口转入自有Java模块；活动封面管线把本次request传给读取器，过期后在IO边界退出。流在成功、读取异常和严重错误路径关闭，HTTP连接在所有取得连接后的退出路径断开。移除旧URL缓存读写，避免过期缓存写入及同URL复用旧图；有效主线程显示缓存保持。重复HTTP URL可能重新读取，这是明确的行为取舍。

响应最多4 MiB；单URI使用6秒单调时钟预算，跨重定向/读取/解码边界检查，HTTP单次超时不超过2秒且按剩余预算缩短。最多3次HTTP(S)重定向；无进展流最多8次。先读尺寸，源图每边不超过32768且不超过6400万像素，采样后每边不超过1024，解码后再次验证。流在解码前已关闭；拒绝的自有解码图回收，不回收元数据或显示缓存借用图。

6秒不是对ContentProvider/Binder、DNS、HTTP内部读头、native解码或close的强制终止承诺。请求失效在下个检查点退出，没有额外异步disconnect线程。每次重试/备用URI各有独立预算；完整请求可能多次读取。外部阻塞、整体管理器清理与UI下游归属仍须继续处理。

## 证据

- 13增量/157累计文件，精确逆补丁还原R21，源码/成品各371组桥接与继承用例。
- 真实生产class直接用于JVM测试和D8：IO/尺寸133断言，Android框架替身32断言，Work12050与Pipeline38断言。不是ART或真实网络/原生解码证明。
- 构建、对齐、开发签名、属性、独立回解与成品一致通过；22保护包未变。
- P3扫描修正get/put遗漏并通过36用例，重新扫描仍为基线/候选各127，无新增。127项人工判定尚未完成。
- JADX两新类退出0，a9退出3源于既有NavBarService.Ε错误。JADX漏还原HTTP异常流引用/disconnect、零进展计数和部分decode catch；最终smali异常区间、保存寄存器、清理/重抛与生产Java交叉确认，详见manual_audit.json。
- 首次模块测试编译缺少仅测试所用LatestVisualWork依赖，补到测试输出后通过；旧日志保留，测试替身未进入DEX。

关键脚本：stability_base10_media_uri_patch_20260913.py、test_base10_media_uri_20260913.py、test_media_uri_android_20260913.py。源码快照及生产class位于modules/media_uri_r22。原R21模块不覆盖。

## 后续与恢复

下一项：重复manager、活动会话监听与初始化/销毁清理；ea selector15能重置destroyed且在延迟执行时取当前manager，llI selector15只关闭旧封面owner，尚未释放旧manager。继续其他P1、全部L01～L12+功能回引和P3配置/API/组合门禁，不能把本分项当全计划完成。

本地门禁完成后再由用户安全停车验证：切歌/换播放器、无封面/错误URI、暂停恢复及退出重进，观察旧封面不覆盖新歌，采集MusicCtrlMgr/媒体会话/crash与同状态内存日志。不得在实车故意制造OOM或网络攻击。失败先返回原车桌面、保留证据，核对签名/版本/配置后恢复已验证V2；R21/R22仅为本地检查点。未实车包不进D:/output/zhiui/clear，当前不连接或安装设备。
