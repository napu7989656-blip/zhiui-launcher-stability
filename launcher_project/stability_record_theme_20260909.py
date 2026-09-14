"""Record the scoped R10 review; never rebuild or replace its APK."""
import csv, hashlib, json, shutil
from pathlib import Path
ROOT = Path('D:/apk')
OUT = ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
archive = OUT/'record_archive_before_r10_closeout'
assert not archive.exists(), 'Review records already archived; do not overwrite'
v = json.loads((OUT/'base10_r10_verification.json').read_text())
c = json.loads((OUT/'base10_r10_cumulative_content.json').read_text())
api = json.loads((OUT/'base10_r10_cumulative_signature_check.json').read_text())
assert hashlib.sha256(Path(v['candidate']).read_bytes()).hexdigest().upper() == v['sha256']
assert not v['unexpected_source_changes'] and not v['unexpected_final_business_changes']
assert len(c['changed_files']) == 95 and all(p['unchanged'] for p in c['protected_apks'])
assert not api['new_signature_findings']
archive.mkdir()
for p in [OUT/'base10_r10_draft_status.json', OUT/'本地整改进度.md', OUT/'issues.csv', OUT/'feature_matrix.md', ROOT/'PROJECT_MAP.md']:
    shutil.copy2(p, archive/p.name)
manual = dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS', sha256=v['sha256'],
    review_date='2026-09-09', source_final_cases=144, delta_files=5, cumulative_files=95,
    reviewed=['ThemeRead all methods: final fields, volatile epoch, register bounds, current/post/close branches',
              'ThemeDeliver constructor/run: final DEX guard precedes delegate invocation',
              'ie constructor selector6 preserves p2; theme worker query and cursor cleanup retained',
              'ci theme setter invalidates epoch before apply; exact-key search finds theme_mode only in ci getter/setter',
              'Known setter callers: ie user theme cycle and QuickSettingsThemeApply publication',
              'ff initializes slot before tasks; ordinary close and dispose invalidate; grid preparation preserves pending legitimate read',
              'TileSlot synchronizes current/pending; TileSnapshots uses owned Handler; publication repeats current guard'],
    jadx='ThemeRead exit3: sole reported error is pre-existing NavBarService.Ε(ImageButton,String) RegionMakerVisitor; ThemeRead and ThemeDeliver Java cross-checked with final smali. ThemeDeliver exit0.',
    limits='Scoped review only. Same-process audited setters; external/dynamic preference writes and concurrent unreviewed callers are not covered. No ART/OEM/vehicle validation. BASE-10 and V2/V3 reintegration remain incomplete.')
for name in ['base10_r10_manual_audit.json','base10_r10_draft_status.json']:
    (OUT/name).write_text(json.dumps(manual, ensure_ascii=False, indent=2), encoding='utf-8')
doc = f'''# BASE-10 R10 主题读取人工收尾（2026-09-09）

候选：`D:/apk/zhiui-stability-local-base10-r10.apk`，SHA-256 `{v['sha256']}`。本次核对现有成品身份，不重新构建或覆盖 APK。

主题查询取得独立标识和进程内偏好代次。较新的查询、偏好写入（包括 A→B→A）、普通关闭、永久销毁或 Service 替换使旧结果无效；每控制器最多一个待界面主题结果。主题同步允许在面板显示前开始，因此没有增加根视图可见性门禁，网格准备也不取消合法主题查询。

## 人工核对

- 对照 `final_redecode/base10_r10` 的 ThemeRead/ThemeDeliver 与 JADX 输出，核对字段类型、寄存器、构造器、返回值及投递前/执行前守卫。TileSlot 的生产实现以同一锁管理当前查询和待回调；投递拒绝清除 pending，关闭撤销待回调。回调异常由队列层处理。
- `ie.<init>(ff,int)` 的 p2 未被覆盖，只有 selector6 建立主题查询。原查询 URI、模式映射、偏好读值以及正常/异常 Cursor.close 路径保留；新增投递仍在既有资源清理区间内。
- `ci.Ͷ(Context,int)` 在 Editor.apply 前变更代次，不占用调用方寄存器。全 smali 的 theme_mode 字面键集中于 ci 读写方法；已发现的 setter 调用是 ie 用户主题切换和 QuickSettingsThemeApply。后者仍检查当前 Service、观察到的偏好和值域，再应用原昼夜模式计算。
- ff 构造时先初始化 slot，再建立任务；ʹ、Ά、stabilityDispose 入口使主题查询失效；Ό 网格准备不误撤合法查询。当前已审查调用链按界面线程串行发布；这不证明外部写入或未审查的动态键/并发调用也被覆盖。
- JADX ThemeRead 任务退出码3，日志唯一错误为既有 NavBarService.Ε(ImageButton,String) 的 RegionMakerVisitor；两新增类输出与最终 smali 一致。不能将该次 JADX 称为零错误通过。

## 现有验证与限制

沿用已完成的源码/成品144项场景（22项主题及122项继承场景）、精确父树恢复、构建/对齐/开发签名/aapt/apkanalyzer/最终回解。累计95文件差异有归属，22保护APK未变，Android29声明候选127且无新增；127项尚未全部人工判定。本次不重复这些未发生变化的自动测试。

smali解释器替换Android、查询、时间与部分模块；不等同ART、真实窗口或OEM运行。偏好代次只覆盖当前进程已核对的setter。本地总体门禁仍未通过，R11及后续V2/V3功能回引、等待中断/API/组合回归继续进行。

## 实车与回滚

尚未实车，当前不安装、不进入正式交付目录。未来停车测试应覆盖连续主题切换、面板关闭重开、HOME及应用往返，预期旧查询不改回主题；采集 QuickSettingsMgr 与崩溃日志。失败先返回原车桌面，保留日志；核对签名/版本和配置兼容后恢复已验证V2。R9b仅为本地父检查点，不是实车回滚包。
'''
(OUT/'base10_r10_本地修复记录.md').write_text(doc, encoding='utf-8')
for p, msg in [(OUT/'本地整改进度.md','R10人工审计及记录已收尾；最新本地检查点R10，APK未改变。'),(OUT/'feature_matrix.md','主题查询/偏好代次R10分项本地通过；完整功能矩阵仍部分完成。'),(ROOT/'PROJECT_MAP.md','## 50. BASE-10 R10主题读取人工收尾（2026-09-09）\n\nR10现有成品哈希已复核，5增量/95累计文件，144源码成品场景沿用。人工确认主题查询、代次、关闭与setter调用链；JADX既有服务方法错误保留并交叉确认。')]:
    with p.open('a', encoding='utf-8') as f:
        f.write('\n\n'+msg+' 证据：launcher_project/diagnostics/stability_local_20260905_r1/base10_r10_本地修复记录.md（证据目录内见同名文件）。总体本地工作、R11及V2/V3回引仍未完成，未实车。\n')
p=OUT/'issues.csv'
with p.open(encoding='utf-8-sig', newline='') as f: rows=list(csv.DictReader(f))
for row in rows:
    if row['id']=='BASE-10':
        row.update(checkpoint='base10_r10', status='PARTIAL_LOCAL_PASS', local_action_or_result='R10主题查询/进程内偏好代次人工收尾；144源码成品场景、累计95文件。导航操作、等待中断、其他线程与完整调用方及V2/V3回引仍待完成。')
with p.open('w', encoding='utf-8-sig', newline='') as f:
    w=csv.DictWriter(f, fieldnames=list(rows[0])); w.writeheader(); w.writerows(rows)
print('R10 scoped review recorded; previous records archived; APK unchanged; overall work remains incomplete.')
