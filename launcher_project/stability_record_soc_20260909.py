import json,shutil,csv
from pathlib import Path
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');ROOT=Path('D:/apk')
v=json.loads((OUT/'base10_r9b_verification.json').read_text());c=json.loads((OUT/'base10_r9b_cumulative_content.json').read_text());api=json.loads((OUT/'base10_r9b_cumulative_signature_check.json').read_text())
assert v['unexpected_final_business_changes']==[] and len(c['changed_files'])==92 and all(x['unchanged'] for x in c['protected_apks']) and not api['new_signature_findings']
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],source_final_cases=122,read_after_action_jvm_assertions=50012,delta_files=8,cumulative_files=92,protected_apks=22,jadx='SocAction and ReadAfterAction exit0; token ownership/monitor/15000ms expiry checked against source and final smali; JADX synthetic constructor shorthand is not compilable source.',limits='No command execution/cancellation/retry/order change. UI-read suppression ends on matching latest callback, ordinary close/reset or 15000ms expiry. No guarantee of native action completion after timeout; no vehicle/ART test.')
(OUT/'base10_r9b_manual_audit.json').write_text(json.dumps(manual,indent=2),encoding='utf-8');(OUT/'base10_r9b_draft_status.json').write_text(json.dumps(manual,indent=2),encoding='utf-8')
doc=f'''# BASE-10 r9/r9b SOC滑条本地修复（2026-09-09）

当前APK `D:/apk/zhiui-stability-local-base10-r9b.apk`，SHA-256 `{v['sha256']}`。父r9、祖父r8b，全部保留；本地阶段仍未完成。

## 修改

SOC初始化（sj selector3）和轮询（ie selector24）共用独立查询标识及单个待界面结果。Service/面板身份、页面重建、关闭、更新的查询或用户拖动使旧结果失效。拖动期间不提交后台结果，程序性进度变化不误判为用户操作。

r9b进一步核对原bg selector3、oa selector5异步回调：最新已有操作等待回复期间，暂停SOC状态结果发布；同一操作标识从原任务传给原回调，旧操作回复不会解除新操作等待。断连、发送异常和当前成功/失败回调解除等待并使此前查询失效。等待使用SystemClock.uptimeMillis，最长15秒，匹配原CoreServiceClient.CALLBACK_TIMEOUT_MS；普通关闭/重建重置界面等待。

这里只改变Launcher读取与显示时机。原命令、参数、发送顺序、回调内容和线程执行请求保留，没有执行、取消、重试或新增任何车辆命令；15秒界面等待到期不意味着车辆操作已完成，也不会取消操作。

## 验证及回滚

r9新增6文件差异，r9b新增8文件差异；全部原类修改可按manifest精确恢复父版本。源码及成品回解122项场景（8操作等待、19SOC、95磁贴）；生产ReadAfterAction真实JVM测试50,012断言，覆盖1万次旧/新回复、重复完成、超时边界、reset及真实延迟线程。TileSlot有界结果队列沿用此前独立JVM测试。

构建/开发签名/zipalign/aapt/apkanalyzer/成品回解/精确差异通过；累计92文件有归属，22保护APK哈希不变，原资源ID保留，Android29声明候选127且无新增。候选API尚未全部人工判定。

r9首次成品测试因引用源码标签名失败，已改为沿实际分支操作数定位回解标签；原失败日志保留，resume日志单独保存。四个SOC辅助类JADX检查均exit0，关键行为仍以最终smali和生产模块为准，不把反编译输出当可编译原源码。

未做ART、OEM/native、真实窗口或实车验证。当前包不进正式交付目录；失败回滚到父检查点、保留V2或原车桌面，任何卸载需明确授权。

## 后续本地工作

继续主题偏好A→B→A、导航用户操作与迟到读取、等待中断/背景玻璃、其他线程与完整调用方；然后完成V2/V3功能回引、API人工覆盖、配置升级回滚及组合回归。仍不需要连接车机。
'''
(OUT/'base10_r9b_本地修复记录.md').write_text(doc,encoding='utf-8')
progress=OUT/'本地整改进度.md';archive=OUT/'本地整改进度_归档_截至base10_r8b.md';assert not archive.exists();shutil.copyfile(progress,archive)
text=progress.read_text(encoding='utf-8');old=json.loads((OUT/'base10_r8b_verification.json').read_text())['sha256']
text=text.replace('2026-09-09，BASE-10 r8b','2026-09-09，BASE-10 r9b').replace('zhiui-stability-local-base10-r8b.apk','zhiui-stability-local-base10-r9b.apk').replace(old,v['sha256']).replace('父版本 r8（继承r7仪表修复）','父版本 r9（继承r8b磁贴与r7仪表修复）').replace('累计85文件','累计92文件')
text=text.replace('SOC滑条初始化/轮询有效性；','主题偏好与读取有效性；').replace('现在继续SOC滑条、用户操作时序、后台任务和功能回引。','r9/r9b处理SOC初始化/轮询、拖动和异步操作期间的界面读取等待。现在继续主题、导航操作时序、后台任务和功能回引。')
text+='\n最新完成：r9/r9b源码与成品122项场景、ReadAfterAction生产JVM50,012断言；成品/签名/差异及累计92文件门禁通过。详见 `base10_r9b_本地修复记录.md`。全部本地检查仍未完成。\n';progress.write_text(text,encoding='utf-8')
for path,content in [
(ROOT/'PROJECT_MAP.md',f'\n\n## 48. BASE-10 r9/r9b SOC读取与异步操作等待（2026-09-09）\n\n当前 `zhiui-stability-local-base10-r9b.apk`，SHA256 `{v["sha256"]}`。SOC初始化/轮询共用查询及面板身份，关闭/拖动使旧结果失效，每控制器1待SOC结果。原操作等待期间暂停状态回写，旧回调不解除新等待，15秒界面等待上限与原IPC回调超时一致，不取消/重试/改变请求。源码/成品122场景、生产JVM50,012断言；累计92文件/22保护APK/API127无新增。记录launcher_project/diagnostics/stability_local_20260905_r1/base10_r9b_本地修复记录.md。完整本地阶段、V2/V3回引和ART/实车验证仍未完成。\n'),
(ROOT/'智UI稳定性修复计划_本地优先_20260905.md','\n\n2026-09-09：BASE-10 r9/r9b SOC读取、拖动有效性及已有异步操作等待完成分项本地门禁；下一步主题A→B→A、导航操作、后台中断及其余既定本地工作。未进入实车阶段。\n'),
(ROOT/'launcher_project/README.md','\n\n2026-09-09本地稳定性最新检查点BASE-10 r9b，尚未完成全部本地检查，未实车。当前进度及证据见diagnostics/stability_local_20260905_r1/本地整改进度.md。\n'),
(ROOT/'launcher_project/stability_modules/README.md','\n\n2026-09-09新增：TileSlot/TileBatch每磁贴单个待结果（20,024 JVM断言）；QuickSettingsReadExecutor增加同一所有者/类别下对象身份子键（31,044断言）；ReadAfterAction只控制界面读取等待，匹配原15秒回调超时（50,012断言）。所有模块仅编入自有生产类，框架/查询替身不入DEX。不是ART/车辆验证。\n')]:
    with path.open('a',encoding='utf-8') as f:f.write(content)
with (OUT/'feature_matrix.md').open('a',encoding='utf-8') as f:f.write('\n\n2026-09-09当前更新到BASE-10 r9b，SOC读取/拖动/原操作等待分项本地通过；总体仍部分完成，证据base10_r9b_本地修复记录.md。\n')
p=OUT/'issues.csv';rows=list(csv.DictReader(p.open(encoding='utf-8-sig')))
for row in rows:
    if row['id']=='BASE-10':row['checkpoint']='base10_r9b';row['status']='PARTIAL_LOCAL_PASS';row['local_action_or_result']='r8b磁贴及r9b SOC结果/缓存/操作等待分项通过，122源码成品场景、累计92文件；主题/导航操作/后台等待/完整调用方仍待修复复核'
with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print('Recorded SOC checkpoints and PROJECT_MAP48; local work remains active, no vehicle needed.')
