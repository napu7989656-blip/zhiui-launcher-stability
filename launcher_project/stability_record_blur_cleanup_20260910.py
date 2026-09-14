"""R16 internal-allocation cleanup evidence; known caller cleanup gap stays open."""
import json,hashlib,shutil,csv
from pathlib import Path
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
def read(n):return json.loads((OUT/n).read_text(encoding='utf-8'))
v=read('base10_r16_verification.json');c=read('base10_r16_cumulative_content.json');s=read('base10_r16_finalize_status.json');a=read('base10_r16_cumulative_signature_check.json')
assert s['checks_passed'] and not v['unexpected_source_changes'] and not v['unexpected_final_business_changes']
assert len(c['changed_files'])==120 and all(x['unchanged'] for x in c['protected_apks']) and not a['new_signature_findings']
assert hashlib.sha256(Path(v['candidate']).read_bytes()).hexdigest().upper()==v['sha256']
archive=OUT/'record_archive_before_r16_closeout';assert not archive.exists();archive.mkdir()
for p in [OUT/'base10_r16_draft_status.json',OUT/'本地整改进度.md',OUT/'issues.csv',OUT/'feature_matrix.md',ROOT/'PROJECT_MAP.md']:shutil.copy2(p,archive/p.name)
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=2,cumulative_files=120,source_final_cases=284,
 review=['crop locals10: v6 borrowed input preserved; v7/v8/v9 initialized before try then capture successful allocation results; all parameter register encodings remain valid',
 'crop Exception catch retains original null return after cleanup; catchall releases then rethrows original throwable',
 'stack-blur locals38: unused v37 holds copied bitmap before protected region; borrowed p0 unchanged, null-copy fallback unchanged; successful loops/return unchanged',
 'cleanup excludes null/borrowed/recycled images and suppresses cleanup failure only; outer error identity survives, all remaining intermediates attempted',
 '24 typed catch/cleanup cases with injected allocation state plus260 inherited per source/final; exact inverse restores all original math and unrelated a2 methods'],
 jadx=s['jadx'],jadx_caveats='BitmapCleanup exit0; a2 exit3 reports unchanged CoreService.ʹ BlockProcessor error. Both modified bitmap methods render cleanup/rethrow and were crosschecked against final smali. Unrelated a2.Ζ remains incompletely decompiled.',
 remaining='Caller h2 receives the final blur before recycling scaled input but currently tracks it only afterwards: if recycle throws, final blur is not yet owned. MainBlurHost.release catches no Error itself; frame release loop only catches RuntimeException. Follow with R16b before claiming complete blur allocation cleanup. Other P1, P2/P3 and vehicle remain incomplete.')
for n in ['base10_r16_manual_audit.json','base10_r16_draft_status.json']:(OUT/n).write_text(json.dumps(manual,ensure_ascii=False,indent=2),encoding='utf-8')
doc=f'''# BASE-10 R16 裁剪/模糊函数内部异常清理（2026-09-10）

APK `D:/apk/zhiui-stability-local-base10-r16.apk`，SHA-256 `{v['sha256']}`，30,080,319字节。父R15保留；2增量/120累计文件，未实车，总计划未完成。

裁剪函数在每次成功分配后保存中间图；普通异常释放已分配图并保留原返回null行为，严重错误清理后继续抛出原错误。stack-blur在复制位图后保存独立引用，对像素数组/计算/写回异常清理副本并重抛；原图借用、空copy回落、裁剪参数与正常模糊运算保持。清理助手跳过原图、空值和已回收图，清理本身失败也不掩盖外层错误。

源码/成品各284场景（24清理、260继承），执行实际typed catch表、处理指令与清理路径，分配状态和Bitmap失败由替身注入，不是native/ART运行。逆补丁恢复完整R15；locals10/38、v6/v37保存值、catch覆盖与错误寄存器按成品核对。构建、对齐、签名、解析、回解、累计120文件、22保护APK通过，Android29候选127无新增。

JADX的BitmapCleanup退出0；a2退出3来自未改CoreService.ʹ的BlockProcessor错误。两个本轮位图方法正确显示清理和重抛，已交叉最终smali；不相关a2.Ζ仍无法完整反编译，不能声称全部Java或ART通过。

仍有明确的调用方缺口，不能宣布完整位图清理完成：h2接到最终模糊图后，先回收缩略图再登记最终图；若回收抛异常，最终图尚未被任务接管。MainBlurHost的release也需要隔离严重清理错误，避免一张图清理失败中断后续释放。下一步R16b在调用方补齐这两处，独立构建，保留R16。

其他线程/等待清单base10_remaining_threads_r16.json含185引用/76方法，尚待人工分类；完整P1、V2/V3回引与P3门禁未完成。未来停车只做壁纸/背景UI观察和MainBlur/MainActivity/crash定向日志，不主动制造车机OOM、不执行控制请求。失败返回原车桌面，保留日志并核对签名/版本/配置后恢复已验证V2。未实车包不进入正式交付目录，目前尚不到连接设备阶段。
'''
(OUT/'base10_r16_本地修复记录.md').write_text(doc,encoding='utf-8')
with (OUT/'本地整改进度.md').open('a',encoding='utf-8') as f:f.write('\n\n## 最新检查点：2026-09-10 BASE-10 R16\n\n'+doc.split('\n\n',1)[1])
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as f:f.write(f'\n\n## 56. BASE-10 R16位图函数内部异常清理（2026-09-10）\n\nAPK zhiui-stability-local-base10-r16.apk，SHA256 `{v["sha256"]}`；2增量/120累计文件，284源码/成品场景，22保护包不变、API127无新增。裁剪/模糊内部错误清理，保留原图及原错误。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r16_本地修复记录.md。h2/Host调用方清理缺口留待R16b，其他P1～P3未完成，未实车。\n')
with (OUT/'feature_matrix.md').open('a',encoding='utf-8') as f:f.write('\n2026-09-10 R16位图函数内部异常清理分项通过；调用方剩余两处清理缺口需R16b，完整计划未完成。\n')
p=OUT/'issues.csv'
with p.open(encoding='utf-8-sig',newline='') as f:rows=list(csv.DictReader(f))
for row in rows:
 if row['id']=='BASE-10':row.update(checkpoint='base10_r16',status='PARTIAL_LOCAL_PASS',local_action_or_result='R16内部位图异常清理284源码成品场景通过；h2最终图接管时序/Host严重清理错误仍需R16b，其余P1/P2/P3未完成。')
with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print('R16 scoped evidence recorded; caller cleanup gaps explicitly remain open.')
