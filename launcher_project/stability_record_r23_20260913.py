from pathlib import Path
import json,shutil
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
b=OUT/'record_archive_before_r23';assert not b.exists();b.mkdir()
for p in [ROOT/'PROJECT_MAP.md',OUT/'本地整改进度.md']:shutil.copy2(p,b/p.name)
v=json.loads((OUT/'base10_r23_verification.json').read_text());f=json.loads((OUT/'base10_r23_finalize_status.json').read_text());assert f['checks_passed']
review=[
'a9.stabilityDispose is idempotent on main thread, marks destroyed and drops ia Service reference before cleanup. Future/close/remove Handler/unregister controller/remove active listener are isolated by RuntimeException catch ranges. Controller/callback/token and session manager references clear before framework unregister; shared bitmaps are dropped without recycle.',
'Service.onDestroy and llI reconnect call same disposal before clearing/replacing manager. llI rejects stale/destroyed Service before allocation and posts MediaManagerStart to the specific manager Handler so disposal can remove delayed start.',
'stabilityStart captures owner, uses stabilityCurrent and started flag; no destroyed=false reset. Existing manager and registered listener reused. Missing service, failed initialization or rejected poll enqueue reset started to permit explicit later retry. Original initial3s and periodic5s retained.',
'ea legacy selector15 delegates guarded startup; c8 media selector3 requires full current-owner guard. Unrelated shared selectors, vehicle actions and original session selection unchanged by exact inverse.',
'Source/final390 groups:21 new lifecycle groups and369 retained, replacing exactly two obsolete R21 lifecycle probes. RuntimeException injection covers each disposal operation; matching source/final catch table dispatch used. Test failure for unmodelled StringBuilder logging corrected without APK change.',
'Verifier first rejected same-address aliases separated by a catch directive. Catch declarations now canonicalized without changing range/type/handler/order,7 catch assertions and retained goto5/switch6 pass; original verifier and failures archived. Final test label-name assumption corrected to resolved branch label, not a relaxed content whitelist.',
'JADX a9 exit3 is existing NavBarService.Ε error; startup and disposal accurately reconstructed and checked against final smali. ea/llI exit0 but run methods remain placeholders; final selector bodies, register use and guards independently inspected/executed. c8 and MediaManagerStart output agrees for touched media paths.',
'6 delta/159 cumulative files,22 protected APKs unchanged,API127 no new signatures. Build/align/sign/parse/final decode passed. Late z8/u8 requeue after escaped removal was reproduced separately and is not closed by R23.']
(OUT/'base10_r23_manual_audit.json').write_text(json.dumps(dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=6,cumulative_files=159,source_final_case_groups=390,review=review,jadx=f['jadx'],limits='Not ART/OEM/vehicle. Framework unregister failure may retain inert listener; references to Service cleared but external release not guaranteed. RuntimeException cleanup isolation does not promise recovery from VM fatal errors. z8/u8 late retry guards, downstream UI and full P1/P2/P3 remain open.'),ensure_ascii=False,indent=2),encoding='utf-8')
doc='''# BASE-10 R23 媒体管理器释放与初始化归属（2026-09-13）

APK：D:/apk/zhiui-stability-local-base10-r23.apk
SHA256：`'''+v['sha256']+'''`
父R22保留。6增量/159累计文件，源码和最终回解各390组，22保护包不变，API候选127无新增。分项本地通过，未实车，整体计划未完成。

重连和Service销毁共用幂等释放：先标记失效、清除ia中的Service归属链，再逐项清Future、封面owner、Handler、controller callback及活动会话监听；单项RuntimeException不阻断后续清理。缓存引用释放但不recycle借用图片。框架注销失败时只能保证旧回调失效与Service引用清除，不能宣称外部监听必定释放。

延迟初始化改为捕获具体manager并排入该manager自己的Handler。销毁可撤销未执行启动；执行时验证Service/manager真实归属。一次成功初始化只创建一个周期轮询，不再重置destroyed；复用已有已注册监听。缺少系统服务、初始化异常或Handler拒绝轮询入队时允许以后显式重试。原首次3秒、周期5秒保留。

源码/成品21组新增异常清理/启动/替换回归，继承369组，明确替换R21两项旧生命周期探针，总390组。只是Android/Handler/注册替身，不是ART。构建、zipalign、开发签名、属性、回解、精确逆补丁与累计检查通过。

JADX a9的startup/dispose已与成品smali交叉；退出3为既有NavBarService.Ε错误。ea/llI退出0但run仍是占位，实际新selector代码按最终smali和执行探针审核；c8媒体分支及新MediaManagerStart还原符合。没有把JADX退出0当整个方法可执行证明。

成品校验工具修正同地址标签被.catch分隔的格式等价问题，保留异常范围/类型/处理器顺序；7项专门断言与goto5/switch6全部通过。旧工具、最初比对失败及测试标签假设失败记录保留。未扩大业务白名单，未为格式差异重建APK。

下一项已复现：旧z8/u8媒体动作重试在回调逃过Handler移除时，disposed后仍可能重新排队，证据media_late_retry_r23_audit.json；拟R24补入口守卫，不能将R23当媒体整体验收完成。之后继续影像叠层配置/资源、ADB/IME/其余等待、完整L01～L12+回引和P3全部门禁。

本地总门禁后由用户停车观察HOME/服务恢复、切播放器和退出重进的会话监听/轮询数量，收集MusicCtrlMgr/NavBarSvc/media_session/crash。当前不连接实车，不执行播放或车辆控制命令。失败先返回原车桌面保留证据，核对签名/版本/配置后恢复已验证V2。R22/R23只作本地检查点；未实车包不进正式交付目录。
'''
(OUT/'base10_r23_本地修复记录.md').write_text(doc,encoding='utf-8')
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as p:p.write('\n\n## 69. BASE-10 R23媒体管理器释放与初始化归属（2026-09-13）\n\nAPK zhiui-stability-local-base10-r23.apk，SHA256 `'+v['sha256']+'`；6增量/159累计文件，源码/成品390组，22保护包未变、API127无新增。重连/销毁统一幂等释放，延迟启动绑定manager并可撤销，失败可重试且不复活销毁对象；周期刷新校验实际归属。catch同地址标签规范化经反例及既有goto/switch回归通过。z8/u8晚到重试已另复现，完整P1/P2/P3未完成，未实车。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r23_本地修复记录.md。\n')
p=OUT/'本地整改进度.md';s=p.read_text(encoding='utf-8');p.write_text('# 当前状态：2026-09-13 BASE-10 R23\n\n最新本地APK为R23，SHA256 `'+v['sha256']+'`。管理器分项已收尾，晚到重试z8/u8另有待修复证据；完整计划未完成，未实车。详情base10_r23_本地修复记录.md。下文为历史记录。\n\n'+s,encoding='utf-8')
print('R23 recorded; remaining plan explicitly open.')
