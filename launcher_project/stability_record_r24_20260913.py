from pathlib import Path
import json,shutil
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
backup=OUT/'record_archive_before_r24';assert not backup.exists();backup.mkdir()
for p in [ROOT/'PROJECT_MAP.md',OUT/'本地整改进度.md',ROOT/'智UI稳定性修复_新对话交接_20260913.md']:shutil.copy2(p,backup/p.name)
v=json.loads((OUT/'base10_r24_verification.json').read_text());f=json.loads((OUT/'base10_r24_finalize_status.json').read_text());assert f['checks_passed']
(OUT/'base10_r24_manual_audit.json').write_text(json.dumps(dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=2,cumulative_files=161,source_final_case_groups=400,review=[
'u8.run and z8.run begin with stabilityCurrent; destroyed, replaced Service/manager or cleared ia causes return before original fields/actions/retry enqueue. v0 scratch overwritten by original prologue; locals5/6 retained, original all selector bodies unchanged after exact inverse.',
'R23 actual disposed-owner reproduction for u8 selector2 and z8 requeued once when callbacks escaped removal. R24 executes invalid-owner full methods without any playback transport call or post, and tests current-owner admission only.',
'Source/final400 groups,10 new plus390 inherited. Current playback body preserved by exact inverse rather than executed against vehicle/framework. No new API use beyond existing guard.',
'JADX u8/z8 exit0 and both new guards match final smali. u8 original retry/logging branch still decompiles with possibly uninitialized string/fallthrough; final unchanged goto_2 skips reset/log after rescheduling, not trusted as Java.',
'2 delta/161 cumulative files,22 protected APKs unchanged,API127 no new candidates; build/align/sign/parse/final decode passed.',
'Next camera reconnect audit confirmed old qi view/reference abandoned by replacement and two close calls produce two Thread starts, with Thread/native effects substituted; no camera/vehicle calls. Camera fixes not started.'],jadx=f['jadx'],limits='Not ART/OEM/vehicle. Does not claim all media or L08/downstream UI complete. Same-manager user-action/session behavior, camera resources, shared ADB/IME, full feature reintegration and P3 remain open.'),ensure_ascii=False,indent=2),encoding='utf-8')
doc='''# BASE-10 R24 媒体晚到重试入口（2026-09-13）

APK：D:/apk/zhiui-stability-local-base10-r24.apk
SHA256：`'''+v['sha256']+'''`
父R23及R21/R22保留。2增量/161累计文件，源码/成品各400组，22保护包未变，API候选127无新增。分项本地通过，未实车；完整本地计划未完成。

u8与z8媒体延迟动作/重试入口增加真实Service和manager归属检查。销毁、替换或ia回调已清除时，进入原逻辑前退出，避免逃过Handler移除的旧回调又排新任务。原当前owner的播放/切歌动作、8次上限、800ms间隔与所有selector正文逐字保留，未主动执行媒体或车辆指令。

R23父反例已实际执行disposed路径并复现两类重新排队，记录media_late_retry_r23_audit.json。R24新增10组实际守卫/失效完整方法执行测试，继承390组。当前有效分支只验证放行和逆补丁正文保持，不把替身当真实播放/ART验证。

构建、对齐、开发签名、包属性、成品回解、源/成品一致与累计差异通过。JADX两类退出0，新守卫和最终smali一致；u8旧重试/日志正文还原仍有落空变量与跳转失真，按未改变的最终goto确认，未使用Java伪源码重写。

下一项影像叠层只做了新审计：重连替换qi时未处理旧实例，旧View/Service引用保留；close每次创建独立线程。证据camera_reconnect_r24_audit.json与camera_qi_r23_audit_20260913.java（JADX退出0）已经保存；qi在R23/R24未修改。构造器读取开关/尺寸/位置偏好，不能直接无条件复用；仍须审查所有ki/lb/ag/帧回调及EGL归属。初始化涉及既有厂商postEvent/setPanoOutputState，审计/测试不执行或扩展这些写接口。

继续影像配置和资源生命周期、共享ADB/IME及其余等待，随后全部L01～L12+功能回引、127项API人工判定、配置升级回滚与组合门禁。媒体URI的6秒是协作预算，外部Provider/native/DNS/内部HTTP读头与close不能被强制终止，已在R22记录；不能称媒体完整关闭。

本地门禁后用户停车最小验证：切播放器/启动音乐后返回HOME、正常关闭重开服务，确认旧实例不重试、不出现重复回调；采集MusicCtrlMgr/NavBarSvc/media_session/crash。失败先回原车桌面并保留证据，核对签名/版本/配置后恢复已验证V2。当前不连接、不安装、不清数据，不进入D:/output/zhiui/clear。
'''
(OUT/'base10_r24_本地修复记录.md').write_text(doc,encoding='utf-8')
camera='''# 影像叠层重连与关闭初审（2026-09-13）

参照R24工作树（qi/ki与R23相同），尚未修改相机代码，无R25候选。

实际onServiceConnected中对qi只有new/constructor/赋值三处引用，没有旧实例读取或释放。解释器执行替换片段后，旧对象仍持有ImageView和Service，而Service字段已经指向新对象；具体窗口/相机是否活动取决于运行状态，本地反例只证明缺失释放路径，未操作设备。

qi.ˋ关闭入口每次new Thread(ki selector2)后start，两次调用产生两个线程任务，未合并。关闭任务按执行时的owner字段读取相机、Surface、SurfaceTexture、EGL及位图，须进一步核对和并发打开/帧处理的交错。不能只在重连时调用一次旧close就宣称线程和资源问题解决。

qi构造器缓存turn_signal_camera_enabled及overlay_w/h/x/y（默认false/420/560/8/40），使用直接typed getter；类型错误/几何越界和重连刷新策略须纳入配置检查。尺寸写入口pi、开关写入口ik/tk已定位但未完成关联审计。

qi.Ͱ隐藏先清字段、再通过180ms动画结束ag selector12移窗；取消动画/销毁等路径必须核对，不能把清字段当移除窗口。qi.Ͳ创建EGL、ͺ释放EGL，ki负责打开/关闭。下一步需确定单一资源线程及generation/所有权、异常释放和帧借用图策略，所有代码以最终smali交叉确认。

JADX qi退出0，关键构造、线程创建、窗口淡出、EGL和厂商反射与smali交叉。既有postEvent/setPanoOutputState属于厂商写调用，未执行、未扩展；测试必须在到达这些调用前隔离。证据camera_reconnect_r24_audit.json记录源哈希及范围，不能当作完整影像功能已修复。
'''
(OUT/'影像叠层重连与资源初审_20260913.md').write_text(camera,encoding='utf-8')
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as p:p.write('\n\n## 70. BASE-10 R24媒体晚到重试与影像初审（2026-09-13）\n\nAPK zhiui-stability-local-base10-r24.apk，SHA256 `'+v['sha256']+'`；2增量/161累计文件，源码/成品400组，22保护包未变、API127无新增。u8/z8晚到入口校验实际归属，原动作/重试正文保持，父反例关闭。JADX两类新守卫与成品一致。影像qi重连替换/关闭线程已另存反例与配置/资源初审，尚未修改。完整P1/P2/P3未完成、未实车。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r24_本地修复记录.md及影像叠层重连与资源初审_20260913.md。\n')
p=OUT/'本地整改进度.md';s=p.read_text(encoding='utf-8');p.write_text('# 当前状态：2026-09-13 BASE-10 R24\n\n最新本地APK为R24，SHA256 `'+v['sha256']+'`。URI读取、manager生命周期、晚到重试各分项已收尾；完整计划未完成，未实车。下一步影像叠层配置/资源（初审有证据），随后ADB/IME/其他P1、全部功能回引和P3。下文为历史记录。\n\n'+s,encoding='utf-8')
p=ROOT/'智UI稳定性修复_新对话交接_20260913.md';s=p.read_text(encoding='utf-8')
update='''# 最新续作检查点：R24（2026-09-13，本地分项，未实车）

以此段覆盖下方历史R21的“当前/下一项”。当前APK D:/apk/zhiui-stability-local-base10-r24.apk，SHA256 `'''+v['sha256']+'''`；工作树launcher_project/diagnostics/stability_local_20260905_r1/worktrees/base10_media_retry_r24，最终回解final_redecode/base10_r24。2增量/161累计文件，源码/成品400组，22保护包未变、API127无新增；manual_audit、finalize_status、verification及本地修复记录均完成。完整计划未完成，未实车。

R22（URI）：13增量/157累计，原URI入口改有界自有模块，4MiB/尺寸/6秒协作预算/重定向限界/异常清理；移除旧URL缓存读写，活动管线传request并在边界拒绝过期。Java真实生产IO133/Android替身32断言、Work12050/Pipeline38断言；不是ART。6秒不能强制终止Provider/native/DNS/HTTP内部读头/close；重试/备用URI各自预算。模块源码快照/生产class位于modules/media_uri_r22，测试替身不入DEX。R21原模块保持。

R23（manager）：统一dispose，重连/销毁失效并清理回调监听；启动绑定具体manager及其Handler，重复成功启动只1轮询，失败可重试且不重置destroyed；周期刷新校验实际owner。6增量/159累计/390组。框架注销失败只保证旧回调失效、断Service引用，不声称外部监听必定释放。

R24（晚到重试）：u8/z8入口加真实owner检查，父版本disposed后重新排队已复现并修复；原媒体动作和重试正文保持。仅10新增+390继承；不是媒体整体L08/下游UI已经完成。

工具已修：P3字段扫描覆盖get/put，36回归通过，重扫仍127且无新增。成品norm把无指令的catch声明保序移至方法末再合并同地址标签，解决.catch分隔标签假差异，7专用断言+原goto5/switch6保持；旧工具和失败日志已归档。不得撤销goto宽度/switch顺序或异常范围/类型/handler顺序保护。

下一实际工作：影像叠层qi重连配置与资源。已保存影像叠层重连与资源初审_20260913.md、camera_reconnect_r24_audit.json、camera_qi_r23_audit_20260913.java（JADX0）。实际重连只new/赋值，旧View/Service引用未释放；两次qi.close创建两Thread已由实际smali替身复现。不能直接复用qi，构造器缓存enabled/w/h/x/y。继续ki/lb/ag、帧与EGL生命周期和配置写入口pi/ik/tk，再设计有界资源清理。原厂商postEvent/setPanoOutputState仅静态审计，不得执行/扩展车辆写接口。相机代码未改，无R25工作树/APK。

之后继续共享ADB/IME/其余等待、完整L01～L12+功能回引、127API人工判定、配置升级回滚和组合门禁。不得用400局部组当全计划通过。

R24补丁stability_base10_media_retry_patch_20260913.py，测试test_base10_media_retry_20260913.py。R23补丁需要依次应用主patch、stability_refine_r23_draft_20260913.py、stability_refine_r23_start_queue_20260913.py才得到最终草稿（这些脚本拒绝覆盖，不要重跑现有树）。构建/最终核验沿用下方固定工具，新版本扩展精确白名单。

本轮没有连接设备、安装、卸载、清数据、写车辆控制或写正式交付目录。全部基线/密钥/历史APK/恢复路径保留。PROJECT_MAP第68～70节和本地整改进度已更新。本轮收到r21-uri自动续作消息，但没有创建/修改任何自动任务；不要依据旧“任务不存在”文字判断现有自动任务状态。

---

以下为原R21交接历史，保留追溯：

'''
p.write_text(update+s,encoding='utf-8')
print('R24 recorded; handoff now points to R24 and camera audit; complete local plan still open.')
