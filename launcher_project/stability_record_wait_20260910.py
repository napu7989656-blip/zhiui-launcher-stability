"""Close the narrowly scoped R12 wait patch and preserve historical records."""
import json,hashlib,shutil,csv
from pathlib import Path
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
v=json.loads((OUT/'base10_r12_verification.json').read_text());c=json.loads((OUT/'base10_r12_cumulative_content.json').read_text());a=json.loads((OUT/'base10_r12_cumulative_signature_check.json').read_text());s=json.loads((OUT/'base10_r12_finalize_status.json').read_text())
assert s['checks_passed'] and not v['unexpected_source_changes'] and not v['unexpected_final_business_changes']
assert len(c['changed_files'])==98 and all(x['unchanged'] for x in c['protected_apks']) and not a['new_signature_findings']
assert hashlib.sha256(Path(v['candidate']).read_bytes()).hexdigest().upper()==v['sha256']
archive=OUT/'record_archive_before_r12_closeout';assert not archive.exists();archive.mkdir()
for p in [OUT/'base10_r12_draft_status.json',OUT/'本地整改进度.md',OUT/'issues.csv',OUT/'feature_matrix.md',ROOT/'PROJECT_MAP.md']:shutil.copy2(p,archive/p.name)
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=4,cumulative_files=98,source_final_cases=194,
    review=['ff static integer query: pre-interrupt before IPC, timeout returns -1 without reading callback array, typed catch before generic restores interrupt and exits',
    'ie selector28 and je selector1: normal awaited array path retained, timeout sets -1 into existing invalid-value path, InterruptedException restores and returns without result/retry',
    'TileSnapshots.post rejects interrupted worker before batch/UI routing; SOC callers reject -1 by original range checks',
    'te/ve callbacks only write per-query arrays and countdown; no UI/controller owner, late callbacks do not republish',
    'final smali locals and catch ranges reviewed: specific InterruptedException handler precedes generic Exception on actual await ranges'],
    jadx=s['jadx'],jadx_caveats='ie.run is an incomplete decompile with type-inference warning; related task also reports the known NavBarService RegionMaker error. je Java incorrectly renders empty owner guard and nested exception ordering; final smali has early return and typed catch before generic. Java is not executable source or proof of exception order.',
    limits='11 injected wait-decision/handler cases plus 183 inherited per source/final. No actual IPC/ART/OEM/vehicle execution. Background glass/other waits and all V2/V3 reintegration remain incomplete.')
for name in ['base10_r12_manual_audit.json','base10_r12_draft_status.json']:(OUT/name).write_text(json.dumps(manual,ensure_ascii=False,indent=2),encoding='utf-8')
doc=f'''# BASE-10 R12 状态等待超时与中断（2026-09-10）

候选 `D:/apk/zhiui-stability-local-base10-r12.apk`，SHA-256 `{v['sha256']}`；父R11保留。本轮4文件增量，累计98文件；仍未实车，完整本地计划未完成。

三处2秒CountDownLatch等待只在成功后读回调数组。超时使用-1：通用读取返回失败，仪表沿原无效值路径（刷新保留原重试，初始化跳过显示）。中断由独立catch恢复线程中断标志并退出，不继续发布或重试。通用读取在IPC前拒绝已中断线程；磁贴发布入口也拒绝中断线程，避免把失败回落缓存当成新状态提交。原请求、参数、2秒等待及车辆分支保持，没有执行真实IPC或控制。

已人工核对ff、ie selector28、je selector1、TileSnapshots.post及te/ve局部数组回调；SOC原值域判断拒绝-1，磁贴由新增发布守卫保护。寄存器/正常与超时分支、typed catch覆盖及先于Exception的顺序已按最终smali确认。晚回调仅更新本次数组并countDown，无UI引用，不复活已退出任务。

源码与成品各194项场景（11等待、183继承），精确逆补丁恢复R11。首次成品测试依赖源码标签截取失败；已按实际跳转目标/导航读取字段定位，原失败日志保留，resume记录分开。构建、对齐、开发签名、aapt/apkanalyzer、最终回解、增量/累计内容通过；22保护APK不变，Android29候选127无新增，完整API人工判定仍待完成。

JADX限制必须保留：ie.run未完整反编译并出现类型推断警告，任务另有既有NavBarService.Ε的RegionMaker错误。je输出把已销毁守卫显示为空、把catch次序显示成嵌套；最终smali实际有return-void，InterruptedException在同一await区间先于Exception。不能用JADX Java执行或推断这里的异常语义。见manual_audit.json及logs/base10_r12_jadx_*。

测试解释器注入await成功/超时并执行实际处理分支和catch体，另检查catch表关联；不是ART、实际线程中断或厂商IPC运行证明。没有主动打断正在运行的厂商/native调用。

后续：玻璃背景x9线程/回写、MainActivity→h2 BarBlur准备链与位图归属，其他操作线程/等待和完整调用方；然后完整L01～L12+回引、配置/组合/API总门禁。尚不需要连接设备。

未来停车最小检查：重复打开关闭只读面板、观察仪表/SOC/磁贴显示，正常结果应恢复显示、超时不提交晚到状态，收集QuickSettingsMgr及crash日志；中断本身可能需受控Android测试环境，不能在实车用车辆控制触发。失败先回原车桌面保留日志，核对签名/版本/配置后恢复已验证V2；R11只作为本地父检查点。未实车包不进正式交付目录，卸载须用户明确确认。
'''
(OUT/'base10_r12_本地修复记录.md').write_text(doc,encoding='utf-8')
progress=(OUT/'本地整改进度.md').read_text(encoding='utf-8')
old=json.loads((OUT/'base10_r11_verification.json').read_text())['sha256']
progress=progress.replace('2026-09-09，BASE-10 R11','2026-09-10，BASE-10 R12').replace('zhiui-stability-local-base10-r11.apk','zhiui-stability-local-base10-r12.apk').replace(old,v['sha256']).replace('父R10保留','父R11保留').replace('183项场景','194项场景').replace('三处状态等待超时/中断、玻璃背景任务','玻璃背景任务').replace('R10人工收尾、R11导航读取/拖动/操作等待本地检查已完成。','R10、R11及R12三处状态等待超时/中断分项本地检查已完成。')
progress+='\nR12最新证据：base10_r12_本地修复记录.md；JADX不完整输出及catch显示问题已按最终smali核对，未声称ART通过。\n'
(OUT/'本地整改进度.md').write_text(progress,encoding='utf-8')
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as f:f.write(f'\n\n## 52. BASE-10 R12状态等待（2026-09-10）\n\nAPK zhiui-stability-local-base10-r12.apk，SHA256 `{v["sha256"]}`；4增量/98累计文件，194源码成品场景、22保护包、API127无新增。三处await超时不读数组，中断恢复并退出，磁贴阻止中断结果发布；JADX不完整/错误显示按最终smali交叉核对。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r12_本地修复记录.md。玻璃背景及其余P1～P3、实车未完成。\n')
with (OUT/'feature_matrix.md').open('a',encoding='utf-8') as f:f.write('\n2026-09-10 R12三处状态等待及中断结果发布分项本地通过；其余功能/总门禁未完成。见base10_r12_本地修复记录.md。\n')
p=OUT/'issues.csv'
with p.open(encoding='utf-8-sig',newline='') as f:rows=list(csv.DictReader(f))
for row in rows:
    if row['id']=='BASE-10':row.update(checkpoint='base10_r12',status='PARTIAL_LOCAL_PASS',local_action_or_result='R12三处状态await超时/中断分项通过，194源码成品场景、98累计文件；玻璃背景/其他线程与完整调用方仍未完成。')
with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print('R12 scoped closeout recorded; overall local plan remains incomplete.')
