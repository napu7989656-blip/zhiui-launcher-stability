"""R14 scoped closeout; no claim that the entire blur pipeline is repaired."""
import json,hashlib,shutil,csv
from pathlib import Path
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
def read(n):return json.loads((OUT/n).read_text(encoding='utf-8'))
v=read('base10_r14_verification.json');c=read('base10_r14_cumulative_content.json');s=read('base10_r14_finalize_status.json');a=read('base10_r14_cumulative_signature_check.json')
assert s['checks_passed'] and not v['unexpected_source_changes'] and not v['unexpected_final_business_changes']
assert len(c['changed_files'])==101 and all(x['unchanged'] for x in c['protected_apks']) and not a['new_signature_findings']
assert hashlib.sha256(Path(v['candidate']).read_bytes()).hexdigest().upper()==v['sha256']
archive=OUT/'record_archive_before_r14_closeout';assert not archive.exists();archive.mkdir()
for p in [OUT/'base10_r14_draft_status.json',OUT/'本地整改进度.md',OUT/'issues.csv',OUT/'feature_matrix.md',ROOT/'PROJECT_MAP.md']:shutil.copy2(p,archive/p.name)
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=2,cumulative_files=101,source_final_cases=238,
 review=['a2 crop helper saves borrowed input in unused v6; locals7 keeps parameters within encoding range and no math/register overwrites v6',
 'both intermediate recycle decisions retain existing same-output guards and additionally exclude borrowed input; return behavior and exception range preserved',
 'h2 selector1 full-thumbnail recycle excludes selected source v11; source identity remains live until guard; all unrelated selectors and BASE09 guards unchanged',
 'four direct crop calls: three in h2 and one in Ϋ.run. Ϋ can use ak last displayed source, so shared helper protection applies without altering caller',
 '15 actual recycle decision scenarios include three failures reproduced on parent; 223 inherited scenarios per artifact. Not full bitmap allocation/Android runtime testing'],
 jadx=s['jadx'],jadx_caveats='Both requested methods render the new source identity guards correctly and were crosschecked with final smali. a2 task exit3 reports BlockProcessor failure in unchanged CoreService.ʹ(String,String); h2 task exit3 reports the existing NavBarService.Ε RegionMaker failure. Neither is a zero-error whole-decompile claim.',limits='Partial allocation cleanup, MainActivity task/result ownership and full V2/V3 reintegration remain pending. Source bitmap may still be returned by existing fallback; callers must not assume exclusive ownership.')
for n in ['base10_r14_manual_audit.json','base10_r14_draft_status.json']:(OUT/n).write_text(json.dumps(manual,ensure_ascii=False,indent=2),encoding='utf-8')
doc=f'''# BASE-10 R14 模糊处理保护共享原图（2026-09-10）

APK `D:/apk/zhiui-stability-local-base10-r14.apk`，SHA-256 `{v['sha256']}`，30,080,319字节。父R13保留，2增量/101累计文件。未实车，完整本地工作仍未完成。

裁剪/缩放可能返回传入位图本身。原逻辑在下一步生成不同输出后直接回收中间位图，可能同时回收仍由壁纸显示持有的原图。本轮在裁剪辅助函数两处、主桌面完整缩略图一处回收判断中排除原图身份；仍回收真正独有且已被替换的中间图。保留裁剪、缩放、模糊参数与返回/异常行为。

人工核对a2新增保存寄存器v6不被覆写，locals增加后编码范围有效；h2源图v11到回收判断间未改变，原所有者守卫及其他selector未改。四处裁剪调用（三处h2、一处Ϋ）共享此保护。源码/成品各238场景（15身份、223继承），三处缺陷均在父版本实际回收判断块中复现。测试使用位图身份替身执行smali回收分支，不是Android位图运行证明。

构建、签名、对齐、解析、成品回解和精确逆补丁通过；22保护APK不变，Android29候选127无新增。累计检查首次因把早已纳入BASE09的h2重复计入清单而失败，已纠正为仅新增a2归属；实际累计101文件，未扩大差异豁免，失败日志与resume日志保留。JADX具体退出码和人工交叉结论见manual_audit及对应日志。

JADX本次两个目标方法均正确显示新增原图身份判断，并已和最终smali交叉核对。a2任务退出3来自未改CoreService.ʹ(String,String)的BlockProcessor错误；h2任务退出3来自既有NavBarService.Ε的RegionMaker错误。不能称整个反编译零错误通过。

下一步继续MainActivity模糊任务与结果所有者、异常中间图释放和延迟子回调。静态扫描已生成base10_blur_callers_r14.json，91处引用/40方法仅为待审查清单，不能计作人工覆盖完成。扫描JSON完整写入后控制台遇到GBK字符输出问题；已修复脚本stdout编码，未重写现有结果。LatestVisualWork只完成JVM准备，尚未集成APK。

本轮不解决所有位图生命周期；原回退仍可能返回共享输入，后续清理不得将它当独占结果回收。仍有其余P1、L01～L12+回引、API人工分类、配置和组合验证待完成。

未来停车最小验证：切换壁纸、主题并重复打开快捷面板，观察背景是否正常、无recycled bitmap异常；采集MainActivity/BarBlur/QuickSettingsMgr及crash日志。不执行车辆控制。失败先返回原车桌面、保留日志，核对签名/版本/配置后恢复已验证V2；未实车候选不进入正式交付目录。目前尚不到连接设备阶段。
'''
(OUT/'base10_r14_本地修复记录.md').write_text(doc,encoding='utf-8')
with (OUT/'本地整改进度.md').open('a',encoding='utf-8') as f:f.write('\n\n## 最新检查点：2026-09-10 BASE-10 R14\n\n'+doc.split('\n\n',1)[1])
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as f:f.write(f'\n\n## 54. BASE-10 R14保护模糊处理共享原图（2026-09-10）\n\nAPK zhiui-stability-local-base10-r14.apk，SHA256 `{v["sha256"]}`；2增量/101累计文件，238源码/成品场景、22保护包不变，API127无新增。三处回收判断排除借用的壁纸原图；裁剪模糊参数不变。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r14_本地修复记录.md。模糊任务所有者/异常分配清理、其余P1～P3未完成，未实车。\n')
with (OUT/'feature_matrix.md').open('a',encoding='utf-8') as f:f.write('\n2026-09-10 R14共享原图回收保护分项通过；完整模糊任务链、V2/V3及总体门禁仍未完成。\n')
p=OUT/'issues.csv'
with p.open(encoding='utf-8-sig',newline='') as f:rows=list(csv.DictReader(f))
for row in rows:
 if row['id']=='BASE-10':row.update(checkpoint='base10_r14',status='PARTIAL_LOCAL_PASS',local_action_or_result='R14三处共享原图回收保护通过，238源码成品场景；主桌面模糊任务/位图所有权和其他调用方未完成。')
with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print('R14 scoped record saved; full local plan remains unfinished.')
