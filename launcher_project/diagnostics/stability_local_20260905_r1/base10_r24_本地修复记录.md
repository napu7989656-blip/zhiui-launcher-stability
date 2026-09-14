# BASE-10 R24 媒体晚到重试入口（2026-09-13）

APK：D:/apk/zhiui-stability-local-base10-r24.apk
SHA256：`A039CB99F144FDBF94099C1008678433E5DDF69F7C3141C2C599294BBCDB8AC5`
父R23及R21/R22保留。2增量/161累计文件，源码/成品各400组，22保护包未变，API候选127无新增。分项本地通过，未实车；完整本地计划未完成。

u8与z8媒体延迟动作/重试入口增加真实Service和manager归属检查。销毁、替换或ia回调已清除时，进入原逻辑前退出，避免逃过Handler移除的旧回调又排新任务。原当前owner的播放/切歌动作、8次上限、800ms间隔与所有selector正文逐字保留，未主动执行媒体或车辆指令。

R23父反例已实际执行disposed路径并复现两类重新排队，记录media_late_retry_r23_audit.json。R24新增10组实际守卫/失效完整方法执行测试，继承390组。当前有效分支只验证放行和逆补丁正文保持，不把替身当真实播放/ART验证。

构建、对齐、开发签名、包属性、成品回解、源/成品一致与累计差异通过。JADX两类退出0，新守卫和最终smali一致；u8旧重试/日志正文还原仍有落空变量与跳转失真，按未改变的最终goto确认，未使用Java伪源码重写。

下一项影像叠层只做了新审计：重连替换qi时未处理旧实例，旧View/Service引用保留；close每次创建独立线程。证据camera_reconnect_r24_audit.json与camera_qi_r23_audit_20260913.java（JADX退出0）已经保存；qi在R23/R24未修改。构造器读取开关/尺寸/位置偏好，不能直接无条件复用；仍须审查所有ki/lb/ag/帧回调及EGL归属。初始化涉及既有厂商postEvent/setPanoOutputState，审计/测试不执行或扩展这些写接口。

继续影像配置和资源生命周期、共享ADB/IME及其余等待，随后全部L01～L12+功能回引、127项API人工判定、配置升级回滚与组合门禁。媒体URI的6秒是协作预算，外部Provider/native/DNS/内部HTTP读头与close不能被强制终止，已在R22记录；不能称媒体完整关闭。

本地门禁后用户停车最小验证：切播放器/启动音乐后返回HOME、正常关闭重开服务，确认旧实例不重试、不出现重复回调；采集MusicCtrlMgr/NavBarSvc/media_session/crash。失败先回原车桌面并保留证据，核对签名/版本/配置后恢复已验证V2。当前不连接、不安装、不清数据，不进入D:/output/zhiui/clear。
