"""Record verified tile checkpoints without reading private signing logs."""
import json,shutil
from pathlib import Path
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');ROOT=Path('D:/apk')
v=json.loads((OUT/'base10_r8b_verification.json').read_text());c=json.loads((OUT/'base10_r8b_cumulative_content.json').read_text());api=json.loads((OUT/'base10_r8b_cumulative_signature_check.json').read_text())
assert v['unexpected_final_business_changes']==[] and len(c['changed_files'])==85 and all(x['unchanged'] for x in c['protected_apks']) and not api['new_signature_findings']
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],parent='base10_r8',delta_files=2,cumulative_files=85,protected_apks=22,source_final_cases=95,jadx='TileState and fe exit0; own subtitle routing cross-checked with final smali. JADX fe renders disposed conditional empty, while actual final if-eqz/return-void guard remains and existing source/final rejection tests pass.',limits='No vehicle, ART, OEM or native verification. SOC/user-adjustment/theme/background and full V2/V3 checks remain.')
(OUT/'base10_r8b_manual_audit.json').write_text(json.dumps(manual,indent=2),encoding='utf-8')
record=f'''# BASE-10 r8/r8b 磁贴读取修复记录（2026-09-09）

当前检查点 `D:/apk/zhiui-stability-local-base10-r8b.apk`，SHA-256 `{v['sha256']}`。父包r8，r8父包r7；全部保留，V2及原包不变。本地阶段尚未完成，不进入正式交付目录。

## 结果

- 首次整页读取、轮询和点击后单项复查共用每磁贴查询标识；页面关闭/重建、控件替换、磁贴移除或再次操作后，旧结果不再回写缓存和界面。
- 五项本地状态缓存由有效的主线程结果提交；原读取方法保留，实际三个调用入口改用不写缓存的读取方法。原查询参数及值映射保留。
- 每磁贴最多一个待界面结果。点击后两处原生Thread改用已有全局2工作线程/8等待队列，类别7加磁贴对象身份；不同磁贴不相互合并，同一磁贴只保留最新等待任务。
- r8b补充两项关联说明文字：能量回馈/保电模式在缓存提交后调用原本只读本地缓存的文字分支。其余说明仍沿用后台读取值，不增加主线程系统/车辆查询。

## 验证

r8相对r7明确21文件差异；r8b仅2文件。源码和成品回解执行74项磁贴身份/缓存/接线场景及21项说明文字场景；原类逆向还原父版本精确一致。自有TileSlot/TileBatch真实JVM并发测试20,024断言，线程池扩展31,044断言；这些不是ART或车辆测试。

两包均完成apktool构建、zipalign、开发签名、aapt/apkanalyzer解析、成品回解及差异检查。累计85文件有归属，22保护APK哈希不变，原资源ID保留；Android29声明候选127，无新增，原有候选仍待人工调用链判定。

JADX r8 TileSnapshots因既有NavBarService.Ε(ImageButton,String) RegionMakerVisitor失败退出3，自有辅助类可查看；TileSlot/ke及r8b TileState/fe退出0。JADX对ke的共用mobile分支和fe的退出守卫存在错误伪源码表达，最终smali分支执行已核实，不能据JADX伪源码删改逻辑。

## 过程与边界

首轮身份草稿断言发现销毁路径使用v2而普通关闭使用v0，未构建；草稿保存在独立归档目录。随后分支复核修正mobile别名1/4/7/9，保留各阶段manifest。r8通过打包门禁后人工追踪发现说明文字读旧缓存，另建r8b补修，没有覆盖r8。

仍需SOC初始化/轮询、导航用户操作、主题A→B→A、等待中断、背景玻璃及其他线程审计；随后完成V2/V3功能回引、完整调用方/API人工复核、组合与配置回滚检查。未强制打断正在运行的native查询，未执行任何系统/车辆查询或控制指令。

实车阶段将由用户安全停车后按最终清单执行；当前不要求连接车机。失败可回到保留的父检查点、已验证V2或原车桌面，卸载仍需明确授权。
'''
(OUT/'base10_r8b_本地修复记录.md').write_text(record,encoding='utf-8')
progress=OUT/'本地整改进度.md';archive=OUT/'本地整改进度_归档_截至base10_r7.md';assert not archive.exists();shutil.copyfile(progress,archive)
text=progress.read_text(encoding='utf-8');text=text[:text.index('### 2026-09-09 仪表读取续审')]
text=text.replace('BASE-10 r7','BASE-10 r8b',1).replace('zhiui-stability-local-base10-r7.apk','zhiui-stability-local-base10-r8b.apk').replace('A6F8582C03408F2B8FD94780944DCC114D372014A02C80E4B32DF6A2F0D00806',v['sha256']).replace('父版本 r6','父版本 r8（继承r7仪表修复）').replace('累计73文件','累计85文件')
text=text.replace('磁贴结果与本地缓存有效性；','SOC滑条初始化/轮询有效性；')
text=text.replace('仪表缓存/结果与重试已由r7处理；先继续磁贴缓存/结果的过期写入，再处理后台任务和功能回引。','仪表缓存/结果与重试已由r7处理；r8/r8b处理磁贴缓存/结果、逐磁贴队列及能量回馈/保电说明文字一致性。现在继续SOC滑条、用户操作时序、后台任务和功能回引。')
text+='\n最新完成：r8/r8b源码与成品95项场景、自有磁贴模块20,024项JVM断言、池扩展31,044项断言；差异/签名/解析/累计85文件及22保护包检查通过。详见 `base10_r8b_本地修复记录.md`。此前日志归档保留，未到车机阶段。\n'
progress.write_text(text,encoding='utf-8')
for rel,content in [
('PROJECT_MAP.md',f'\n\n## 47. BASE-10 r8/r8b 磁贴状态与说明文字（2026-09-09）\n\n当前 `zhiui-stability-local-base10-r8b.apk`，SHA256 `{v["sha256"]}`。首次/轮询/单磁贴复查的缓存与显示由面板、控件、查询及操作身份保护，后台池新增磁贴身份子键，2线程8等待，每磁贴至多1待界面结果。r8b保持能量回馈/保电说明与新缓存一致。源码/成品95项场景，JVM20,024+31,044断言；累计85文件、22保护APK、API127且无新增。JADX局限详见diagnostics/stability_local_20260905_r1/base10_r8b_本地修复记录.md。其余本地检查和完整V2/V3回引未完成，当前继续SOC与后台线程；未连接车机。\n'),
('智UI稳定性修复计划_本地优先_20260905.md','\n\n2026-09-09执行更新：BASE-10 r8/r8b磁贴结果/缓存与说明文字已完成分项本地门禁，点击后复查纳入逐磁贴有界队列。继续SOC滑条初始化/轮询、用户操作冲突及其余既定本地项目，尚未达到实车阶段。证据见launcher_project/diagnostics/stability_local_20260905_r1/base10_r8b_本地修复记录.md。\n')]:
    with (ROOT/rel).open('a',encoding='utf-8') as f:f.write(content)
for rel in ['feature_matrix.md','local_findings.md']:
    with (OUT/rel).open('a',encoding='utf-8') as f:f.write('\n\n2026-09-09：当前检查点BASE-10 r8b，磁贴读取/缓存/说明文字分项通过；SRC/成品95项及累计85文件检查，完整本地任务仍未完成，下一项SOC滑条。详见base10_r8b_本地修复记录.md。\n')
print('Recorded r8/r8b evidence, current progress, PROJECT_MAP47 and local-first plan.')
