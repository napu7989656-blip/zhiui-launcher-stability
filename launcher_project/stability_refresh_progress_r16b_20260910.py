from pathlib import Path
import shutil,json
out=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');p=out/'本地整改进度.md'
archive=out/'record_archive_before_r16b_closeout/progress_before_header_refresh.md';assert not archive.exists();shutil.copy2(p,archive)
text=p.read_text(encoding='utf-8');at=text.index('## 最新检查点：2026-09-10 BASE-10 R13')
history=text[at:].replace('## 最新检查点：','## 阶段记录：')
v=json.loads((out/'base10_r16b_verification.json').read_text(encoding='utf-8'))
header=f'''# 本地整改进度（2026-09-10，BASE-10 R16b）

**总体本地工作未完成，未实车，不进入正式交付目录。** 完整V2/V3功能尚未回引完成。

最新APK：`D:/apk/zhiui-stability-local-base10-r16b.apk`，SHA-256 `{v['sha256']}`。父R16及全部历史包保留；com.byd.launcher，versionCode1、minSdk24、targetSdk34、arm64-v8a，项目开发证书。

R10～R16b已完成各自分项收尾；近期补齐快捷面板玻璃任务、主桌面模糊任务/结果/子回调归属、共享原图保护及内部/调用方异常位图清理。最新源码/成品各293场景，累计120文件归属、22保护APK不变、Android29候选127且无新增。生产JVM模块证据分别记录，不叠加继承数字。最新人工审计与记录：base10_r16b_manual_audit.json、base10_r16b_本地修复记录.md。

仍需完成：

1. P1：其余线程/等待与完整调用方时序。base10_remaining_threads_r16.json为185引用/76方法的待人工分类清单，不是缺陷数或完成覆盖。
2. P2：完整V2/V3功能L01～L12+逐项修复回引。
3. P3：API127项人工判定、全部修改/关联方法、配置升级回滚与组合回归、总体产物门禁。
4. 本地门禁后才确认当次停车设备、只读采证及实车验证。当前无需车机，不把本地检查当实车结论。

基线、V2、全部历史包及原车桌面恢复路径保留。以下按版本保留阶段事实；其中“尚未完成”只对应当时版本，最新状态以页首及最新分项记录为准。R12以前记录见独立修复记录与归档。

'''
p.write_text(header+history,encoding='utf-8')
print('Progress header now agrees with R16b; historical stages and archive preserved.')
