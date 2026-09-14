"""Close the two R16 caller cleanup gaps; keep full-plan gates open."""
import json,hashlib,shutil,csv
from pathlib import Path
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
def read(n):return json.loads((OUT/n).read_text(encoding='utf-8'))
v=read('base10_r16b_verification.json');c=read('base10_r16b_cumulative_content.json');s=read('base10_r16b_finalize_status.json');a=read('base10_r16b_cumulative_signature_check.json')
assert s['checks_passed'] and not v['unexpected_source_changes'] and not v['unexpected_final_business_changes']
assert len(c['changed_files'])==120 and all(x['unchanged'] for x in c['protected_apks']) and not a['new_signature_findings']
assert hashlib.sha256(Path(v['candidate']).read_bytes()).hexdigest().upper()==v['sha256']
archive=OUT/'record_archive_before_r16b_closeout';assert not archive.exists();archive.mkdir()
for p in [OUT/'base10_r16b_draft_status.json',OUT/'本地整改进度.md',OUT/'issues.csv',OUT/'feature_matrix.md',ROOT/'PROJECT_MAP.md']:shutil.copy2(p,archive/p.name)
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=2,cumulative_files=120,source_final_cases=293,new_jvm_assertions=7,
 review=['h2 successful blur output staged immediately after move-result, before any fallible scaled-image recycle; original source-exclusion guard, algorithm and UI publication unchanged',
 'MainBlurHost.release delegates to BitmapCleanup so cleanup Throwable is isolated and cannot stop the remaining image release loop; source exclusion remains in production Frame.release',
 '9 caller scenarios execute actual ordering and bridge with bitmap faults; parent missing-stage regression reproduced',
 'unchanged production BlurPipeline classes run on real JVM worker: RuntimeException and Error both dispose staged scaled/final images while preserving borrowed source; 7 assertions',
 'R15/R16 inherited production modules, catch dispatch and 284 scenarios retained; exact inverse returns R16'],
 jadx=s['jadx'],jadx_caveats='Both exits3 report only the existing NavBarService.Ε RegionMaker error. New staging-before-recycle order and guarded Host release render correctly and match final smali. Prior h2 decompile fall-through/empty-guard caveats remain; final jump tests pass.',limits='Scoped image ownership/catch evidence, not native Bitmap, ART, OEM or vehicle validation. Remaining thread/wait and full caller inventory, V2/V3 reintegration and P3 gates still open.')
for n in ['base10_r16b_manual_audit.json','base10_r16b_draft_status.json']:(OUT/n).write_text(json.dumps(manual,ensure_ascii=False,indent=2),encoding='utf-8')
doc=f'''# BASE-10 R16b 调用方位图异常清理补齐（2026-09-10）

APK `D:/apk/zhiui-stability-local-base10-r16b.apk`，SHA-256 `{v['sha256']}`，30,080,319字节。父R16保留；2增量/120累计文件，未实车，完整本地计划未完成。

最终模糊图在返回后立即由任务接管，早于可能抛异常的旧缩略图回收；因此回收失败时最终图也可释放。Host释放委托给已有BitmapCleanup，清理时的严重错误不再中断其他图片释放；生产Frame仍排除借用原图。未改变模糊参数、原图保护、缓存提交或原界面行为。

源码/成品各293场景（9调用方、284继承），父R16的接管时序缺口已复现。另7项真实JVM断言直接运行已用于APK的生产模块class，确认运行异常与严重错误均释放接管图、保留原图；算法、位图和Android Host仍为替身。R15已有12073项生产断言及R16异常表证据继续保留，数字有继承/重叠关系，不相加当全量独立覆盖。

构建、对齐、开发签名、解析、成品回解、精确逆补丁、累计120文件与22保护APK通过，Android29候选127无新增。JADX错误和交叉确认记录在manual_audit，关键顺序以最终smali为准，未声称ART或真实内存压力通过。

R16列出的两处调用方清理缺口在本分项关闭。仍需继续185线程/等待引用、76方法及完整调用方审查，完成V2/V3全部L01～L12+回引、API人工判定、配置和组合门禁；当前不是全功能稳定版。后续尤其要把Wi-Fi/蓝牙设置启动与Service初始化区分于可替换状态读取。

未来停车最小检查沿用R15/R16：壁纸/主题/面板重复切换、返回HOME后观察背景，采集MainBlur/MainActivity/NavBarSvc/crash与同条件内存记录；不主动制造实车OOM或执行车辆控制。失败先返回原车桌面保留日志，核对签名/版本/配置后恢复已验证V2。未实车候选不进正式交付目录，尚不到连接设备阶段。
'''
(OUT/'base10_r16b_本地修复记录.md').write_text(doc,encoding='utf-8')
with (OUT/'本地整改进度.md').open('a',encoding='utf-8') as f:f.write('\n\n## 最新检查点：2026-09-10 BASE-10 R16b\n\n'+doc.split('\n\n',1)[1])
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as f:f.write(f'\n\n## 57. BASE-10 R16b调用方位图清理（2026-09-10）\n\nAPK zhiui-stability-local-base10-r16b.apk，SHA256 `{v["sha256"]}`；2增量/120累计文件，293源码/成品场景及7项新增生产JVM断言，22保护包不变、API127无新增。提前接管最终图并隔离Host清理严重错误，关闭R16记录的两处调用方缺口。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r16b_本地修复记录.md。其余P1～P3未完成，未实车。\n')
with (OUT/'feature_matrix.md').open('a',encoding='utf-8') as f:f.write('\n2026-09-10 R16b关闭R16已知两处调用方位图清理缺口；完整线程/功能回引/总体门禁仍未完成。\n')
p=OUT/'issues.csv'
with p.open(encoding='utf-8-sig',newline='') as f:rows=list(csv.DictReader(f))
for row in rows:
 if row['id']=='BASE-10':row.update(checkpoint='base10_r16b',status='PARTIAL_LOCAL_PASS',local_action_or_result='R16b调用方位图清理293源码成品场景及7新增JVM断言通过；其余185线程/等待引用分类、完整调用方及P2/P3未完成。')
with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print('R16b scoped caller cleanup closed; full plan remains active.')
