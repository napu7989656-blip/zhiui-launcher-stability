"""Close R11 scoped evidence without overwriting existing artifacts."""
import json,hashlib,shutil,csv
from pathlib import Path
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
v=json.loads((OUT/'base10_r11_verification.json').read_text())
status=json.loads((OUT/'base10_r11_finalize_status.json').read_text())
c=json.loads((OUT/'base10_r11_cumulative_content.json').read_text())
api=json.loads((OUT/'base10_r11_cumulative_signature_check.json').read_text())
assert status['checks_passed'] and all(x['output_exists'] for x in status['jadx'])
assert not v['unexpected_source_changes'] and not v['unexpected_final_business_changes']
assert len(c['changed_files'])==98 and all(x['unchanged'] for x in c['protected_apks']) and not api['new_signature_findings']
assert hashlib.sha256(Path(v['candidate']).read_bytes()).hexdigest().upper()==v['sha256']
archive=OUT/'record_archive_before_r11_closeout';assert not archive.exists();archive.mkdir()
for p in [OUT/'base10_r11_draft_status.json',OUT/'本地整改进度.md',OUT/'issues.csv',OUT/'feature_matrix.md',ROOT/'PROJECT_MAP.md']:
    shutil.copy2(p,archive/p.name)
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=8,cumulative_files=98,source_final_cases=183,
    review=['NavRead/NavDeliver: registers, immutable capture, TileSnapshots strict active/cached identity, tracking/action gate and per-slot result ownership checked against final smali and JADX',
    'je selector0/default captures nav before instrument p4 reuse; selector1 bypasses nav; both worker paths guard before query',
    'se selector2 drag begins, fromUser change invalidates, stop precedes existing de job creation; other selectors restored exactly',
    'de selector1 captures token; normal, disconnected and caught Exception paths converge on finish; old finish cannot end newer gate',
    'ff slot/gate initialized before tasks; three close/dispose entries plus grid rebuild reset; original cache commit and delegates retained'],
    production_modules='TileSlot, TileBatch, ReadAfterAction unchanged from R10; prior real JVM tests retained. Smali interpreter queue/gate doubles do not establish ART or concurrency.',
    jadx=status['jadx'],limits='183 scoped cases per source/final artifact, includes 144 inherited. Inherited whole-class equality for de/se/je uses exact inverse proof; behaviour executes candidate. Original command not run. 15s UI wait is not command completion/timeout guarantee. Full BASE-10/P1-P3 and vehicle tests remain incomplete.')
for name in ['base10_r11_manual_audit.json','base10_r11_draft_status.json']:(OUT/name).write_text(json.dumps(manual,ensure_ascii=False,indent=2),encoding='utf-8')
doc=f'''# BASE-10 R11 导航音量读取与操作等待（2026-09-09）

候选 `D:/apk/zhiui-stability-local-base10-r11.apk`，SHA-256 `{v['sha256']}`。父版本R10保留，当前仍为本地分项检查点，未实车。

## 修复行为

拖动导航音量滑条时暂停旧状态回写，用户改变进度使先前读取失效；程序性更新不误认为用户动作。原操作任务待结束时暂停状态发布，旧任务结束不能解除新任务等待。每控制器一个待界面导航结果；旧预备面板不能覆盖新活动面板，关闭/重建/销毁后旧结果无效。

新增NavRead、NavDeliver、NavAction，接入ff控制器、je读取、se滑条与de原操作任务，并将NavVolumeApply投递经NavRead路由。共8增量文件，原查询方法、操作命令、参数、线程启动和显示delegate保持。je在原导航构造分支捕获，避免仪表分支复用p4造成selector混淆。

NavAction使用原生产ReadAfterAction的15秒界面等待上限；原execAdbCmd仍保留2000ms参数。这里不改变或执行命令，也不把界面等待到期解释为命令完成或取消。原正常、断连与Exception出口汇合时释放对应等待；不可恢复的Error仍按原异常行为处理。

## 验证与人工审查

源码/签名成品各183项场景（39导航、144继承主题/SOC/磁贴），覆盖原23导航场景及新增拖动、严格根身份和操作等待。逆补丁逐文件恢复R10；继承测试de/se/je整类等同性通过该精确逆证明适配，实际行为测试读取当前树，未豁免未改selector。TileSlot/TileBatch/ReadAfterAction生产模块未变，沿用其真实JVM并发测试，不以解释器替身证明并发。

构建、zipalign、开发签名、aapt/apkanalyzer、最终apktool回解、精确差异与累计检查通过。98累计文件有归属，22保护APK哈希不变，Android29声明候选127且无新增。新增三辅助类JADX输出已逐项对照最终smali，退出码和既有错误见manual_audit.json及原日志，不将反编译Java作为原源码。

人工核对了新增字段初始化与寄存器、je构造/查询分支、se三入口、de任务结束汇合、ff关闭/重建，以及TileSnapshots严格面板身份和原NavVolumeApply缓存提交。现有Exception日志和所有者销毁边界保持。

## 未完成与实车边界

接着处理三处CountDownLatch等待超时/中断、玻璃背景任务及其他线程调用方，完成V2/V3功能回引、API人工判定及配置/组合总门禁。当前不连接设备，不进入正式交付目录。解释器替身/静态检查不等于ART、OEM、真实窗口与实车验证。

未来停车测试：打开/关闭快捷面板，导航音量显示不被旧读取改回；若测试原导航音量操作，须由用户手动执行并观察显示，采QuickSettingsMgr/崩溃日志。其他车辆控制不在本修复验证范围。失败返回原车桌面并保留日志；核对签名、版本及配置兼容后恢复已验证V2，任何卸载仍需明确授权。R10仅为本地父检查点。
'''
(OUT/'base10_r11_本地修复记录.md').write_text(doc,encoding='utf-8')
progress=f'''# 本地整改进度（2026-09-09，BASE-10 R11）

**总体本地工作未完成，未实车，不进入正式交付目录。** 当前原架构分项修复尚未完成完整V2/V3功能回引。

最新APK：`D:/apk/zhiui-stability-local-base10-r11.apk`，SHA-256 `{v['sha256']}`。父R10保留；com.byd.launcher，versionCode1、minSdk24、targetSdk34、arm64-v8a，项目开发证书。

R10人工收尾、R11导航读取/拖动/操作等待本地检查已完成。源码及成品183项场景、累计98文件归属、22保护APK、Android29候选127且无新增。详见base10_r10_本地修复记录.md和base10_r11_本地修复记录.md；既有BASE-01～09及BASE-10 R1～R9b证据全部保留，上一进度归档record_archive_before_r11_closeout。

仍需完成：

1. P1：三处状态等待超时/中断、玻璃背景任务、其他线程和完整调用方时序。
2. P2：完整V2/V3功能逐项修复回引，L01～L12+均按交接及本地计划执行。
3. P3：API127项人工判定、全部修改/关联方法、配置升级回滚和组合回归、总体产物门禁。
4. 本地门禁后才确认当次停车设备并开展只读采证及实车验证。当前无需车机；不得以本地检查替代实车结论。

未完成项不因候选构建成功关闭。基线、全部历史包、V2及原车桌面恢复路径保留。
'''
(OUT/'本地整改进度.md').write_text(progress,encoding='utf-8')
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as f:f.write(f'\n\n## 51. BASE-10 R11导航状态读取（2026-09-09）\n\nAPK zhiui-stability-local-base10-r11.apk，SHA256 `{v["sha256"]}`。导航拖动/原操作等待防旧读取、严格面板身份、单待界面结果；8增量/98累计文件，183源码成品场景，22保护包和API127无新增。人工核对和JADX记录见launcher_project/diagnostics/stability_local_20260905_r1/base10_r11_本地修复记录.md。P1～P3及实车仍未完成。\n')
with (OUT/'feature_matrix.md').open('a',encoding='utf-8') as f:f.write('\n2026-09-09 R11：导航读取/拖动/原操作界面等待分项本地通过，完整V2/V3功能矩阵仍未完成；详见base10_r11_本地修复记录.md。\n')
p=OUT/'issues.csv'
with p.open(encoding='utf-8-sig',newline='') as f:rows=list(csv.DictReader(f))
for row in rows:
    if row['id']=='BASE-10':row.update(checkpoint='base10_r11',status='PARTIAL_LOCAL_PASS',local_action_or_result='R11导航读取/拖动/原操作等待分项通过；183源码成品场景，98累计文件。状态等待中断、玻璃任务、其他线程/完整调用方仍未完成。')
with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print('R11 scoped evidence recorded; full plan remains incomplete.')
