"""Record R13 scoped evidence without promoting the whole plan to complete."""
import json, hashlib, shutil, csv
from pathlib import Path
ROOT=Path('D:/apk'); OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
def read(name): return json.loads((OUT/name).read_text(encoding='utf-8'))
v=read('base10_r13_verification.json'); c=read('base10_r13_cumulative_content.json'); s=read('base10_r13_finalize_status.json'); a=read('base10_r13_cumulative_signature_check.json')
assert s['checks_passed'] and not v['unexpected_source_changes'] and not v['unexpected_final_business_changes']
assert len(c['changed_files'])==100 and all(x['unchanged'] for x in c['protected_apks']) and not a['new_signature_findings']
assert hashlib.sha256(Path(v['candidate']).read_bytes()).hexdigest().upper()==v['sha256']
archive=OUT/'record_archive_before_r13_closeout'; assert not archive.exists(); archive.mkdir()
for p in [OUT/'base10_r13_draft_status.json',OUT/'本地整改进度.md',OUT/'issues.csv',OUT/'feature_matrix.md',ROOT/'PROJECT_MAP.md']: shutil.copy2(p,archive/p.name)
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=4,cumulative_files=100,source_final_cases=223,jvm_assertions=5010,
 review=['ff constructor initializes two slots; close/dispose/root replacement invalidate both; start invalidates before disabled/null exits and uses pool category9',
 'GlassRead checks controller/service/root/epoch via TileSnapshots, exact target view and ticket; prepares and results use independent bounded slots',
 'x9 only selector1 gains guard and routing; final sleep catch restores interruption and returns, normal path rechecks ownership; original drawable colors and pe callbacks preserved',
 'constructor ff,bool,View assigns read after selector set; unrelated constructor/selectors preserved by exact inverse patch',
 'lII16 delegates into MainActivity blur generation: that downstream chain is explicitly still unfinished'],
 jadx=s['jadx'],jadx_caveats='GlassRead/GlassDeliver decompile. x9.run is not fully decompiled, with removed-region warning. The sole reported ERROR is the existing NavBarService.Ε RegionMaker error. Final x9 smali confirms post-sleep guard, InterruptedException handler and guarded prepare/result routing.',
 test_limits='29 glass plus194 inherited scenarios per source/final; Android/Bitmap/await doubles in smali interpreter. JVM5010 executes existing pool and slots. No ART/OEM/vehicle proof.',
 next_module='LatestVisualWork JVM8024 assertions passed, not integrated into R13 APK; MainActivity blur ownership/bitmap cleanup still pending.')
for name in ['base10_r13_manual_audit.json','base10_r13_draft_status.json']:(OUT/name).write_text(json.dumps(manual,ensure_ascii=False,indent=2),encoding='utf-8')
doc=f'''# BASE-10 R13 快捷面板玻璃背景（2026-09-10）

候选 `D:/apk/zhiui-stability-local-base10-r13.apk`，SHA-256 `{v['sha256']}`。父R12保留；4增量、100累计文件，未实车，完整本地计划未完成。

快捷面板玻璃背景从独立建线程改为既有有界读取池类别9；每控制器最多一个待准备回调和一个待界面结果。开始新请求、关闭、销毁或根视图替换使旧请求失效；禁用玻璃背景也先撤旧请求。投递与执行核对控制器、当前服务、根视图、代次和实际目标View。300ms等待后重新检查；中断恢复标记并退出。原位图生成调用、配色与背景安装回调保持。

源码与最终APK各223项场景（29玻璃、194继承），生产池/槽位真实JVM5010项断言；验证类别9和仪表1、导航2不互相顶替，以及千次替换后的准备/结果数量上限。修正过测试解释器const-wide高寄存器处理及测试迭代器缓存对象身份复用；这些是测试工具修正，未额外修改APK。失败证据保留。

构建、对齐、签名、aapt/apkanalyzer、最终回解、精确逆补丁与累计内容通过；22保护APK不变，Android29声明候选127无新增。JADX的GlassRead/GlassDeliver输出正常；x9.run未完整反编译，唯一ERROR来自既有NavBarService.Ε。人工以最终smali确认selector、寄存器、等待catch及结果路由，不能把反编译Java当可执行源码。

边界：解释器使用Android/位图/等待替身，JVM测试验证生产队列逻辑，均不替代ART/车机。MainActivity→h2→a8模糊图生成及子回调的任务、位图归属尚未修复；为下一轮准备的LatestVisualWork模块通过8024项JVM断言，但没有打入R13。其他P1调用方、完整V2/V3回引与P3总门禁仍待完成。

未来停车最小测试：重复开关快捷面板、切换玻璃背景和主题，旧背景不覆盖新面板；采集QuickSettingsMgr、BarBlur和crash定向日志。不执行车辆控制。失败先返回原车桌面并保留日志，核对签名、版本与配置后恢复已验证V2；R12只是本地父检查点。尚不到连接设备阶段，未实车候选不进入正式交付目录。
'''
(OUT/'base10_r13_本地修复记录.md').write_text(doc,encoding='utf-8')
with (OUT/'本地整改进度.md').open('a',encoding='utf-8') as f:f.write('\n\n## 最新检查点：2026-09-10 BASE-10 R13\n\n'+doc.split('\n\n',1)[1])
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as f:f.write(f'\n\n## 53. BASE-10 R13快捷面板玻璃背景（2026-09-10）\n\nAPK zhiui-stability-local-base10-r13.apk，SHA256 `{v["sha256"]}`。4增量/100累计文件，223源码/成品场景，生产JVM5010断言，22保护包不变、API127无新增。有界池类别9、准备/结果分别1槽、旧所有者和中断拦截。JADX x9不完整，已交叉核对最终smali。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r13_本地修复记录.md。MainActivity模糊生成链及P1～P3未完成；LatestVisualWork仅JVM准备，未集成。\n')
with (OUT/'feature_matrix.md').open('a',encoding='utf-8') as f:f.write('\n2026-09-10 R13快捷面板玻璃任务分项本地通过，MainActivity模糊生成链仍待修复；总计划未完成，未实车。见base10_r13_本地修复记录.md。\n')
p=OUT/'issues.csv'
with p.open(encoding='utf-8-sig',newline='') as f:rows=list(csv.DictReader(f))
for row in rows:
 if row['id']=='BASE-10':row.update(checkpoint='base10_r13',status='PARTIAL_LOCAL_PASS',local_action_or_result='R13快捷面板玻璃限流和旧结果拦截通过，223源码成品场景、5010JVM断言；MainActivity模糊链及其他调用方未完成。')
with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print('R13 scoped closeout recorded; remaining local work preserved.')
