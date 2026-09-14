"""R15 scoped pipeline closeout with explicit remaining allocation/full-plan work."""
import json,hashlib,shutil,csv
from pathlib import Path
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
def read(n):return json.loads((OUT/n).read_text(encoding='utf-8'))
v=read('base10_r15_verification.json');c=read('base10_r15_cumulative_content.json');s=read('base10_r15_finalize_status.json');a=read('base10_r15_cumulative_signature_check.json')
assert s['checks_passed'] and not v['unexpected_source_changes'] and not v['unexpected_final_business_changes']
assert len(c['changed_files'])==119 and all(x['unchanged'] for x in c['protected_apks']) and not a['new_signature_findings']
assert hashlib.sha256(Path(v['candidate']).read_bytes()).hexdigest().upper()==v['sha256']
archive=OUT/'record_archive_before_r15_closeout';assert not archive.exists();archive.mkdir()
for p in [OUT/'base10_r15_draft_status.json',OUT/'本地整改进度.md',OUT/'issues.csv',OUT/'feature_matrix.md',ROOT/'PROJECT_MAP.md']:shutil.copy2(p,archive/p.name)
manual=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=20,cumulative_files=119,source_final_cases=260,jvm_assertions=12073,
 review=['MainActivity constructor initializes host after main Handler; force refresh coalesces trigger, execute uses one-worker/one-queued pool, destroy closes before Handler cleanup',
 'h2 selector1 only: source and blurred cache writes staged; original crop/scale/blur parameters retained; successful intermediates tracked; original ignored crop0 released excluding borrowed source',
 'a8 constructor ignores crop0 by original field assignments; other retained outputs transfer before original UI installation to avoid recycling partially installed images on delegate failure',
 'validity uses request identity, current Activity, destroyed flag, current Service identity and service death flag; pending result one per owner; running bitmap work not forcibly interrupted',
 'a8 original adapter/navbar/statusbar delegates preserved; three separate owned child slots; retry moves to valid main delivery, retains original 500ms/five-attempt limit',
 'twelve h2 constructors reviewed: only MainActivity selector1 uses blur, others selectors0/2/3/4/5/6/7/8/9; unrelated and vehicle-action branches restored exactly by inverse patch',
 'production classes passed to D8 byte-identical to JVM-tested classes; min24, only owned classes in module DEX; all module smali exact copied/verified'],
 jadx=s['jadx'],a8_noinline=read('base10_r15_a8_noinline_status.json'),jadx_caveats='BlurPipeline exit0. MainBlurHost/h2 and explicit a8 no-inline report only the existing NavBarService.Ε RegionMaker error. Default a8 request exit1 DONT_GENERATE because anonymous class was inlined; separate no-inline output reviewed. h2 Java incorrectly shows empty disposed guard and retry after successful publish; final smali has early return and goto past retry, covered by an added execution test. Original fallback source selection is confirmed in final smali, not inferred from Java.',limits='JVM executes production queue/ownership with object doubles; smali executes host/guards and verifies original allocation/wiring sites, not Android image computation or ART. Crop/stack-blur internal allocation exceptions still need R16. 91-site broad ownership inventory is not completed by twelve constructor checks. Full P1/P2/P3 remain incomplete.')
for n in ['base10_r15_manual_audit.json','base10_r15_draft_status.json']:(OUT/n).write_text(json.dumps(manual,ensure_ascii=False,indent=2),encoding='utf-8')
doc=f'''# BASE-10 R15 主桌面模糊任务归属（2026-09-10）

APK `D:/apk/zhiui-stability-local-base10-r15.apk`，SHA-256 `{v['sha256']}`，30,080,319字节。父R14保留；20增量/119累计文件。未实车，完整本地计划仍未完成。

保留原h2模糊算法及a8界面行为。主桌面生成请求改为单工作线程、单等待任务，主线程触发合并为一个，待提交结果每所有者一个。新请求、销毁或Activity/Service身份变化使旧结果失效；不会强制中断正在计算的位图。已处理壁纸与模糊缓存改在有效主线程提交时写入，工作线程不提前占用缓存。

成功返回的裁剪/缩略图由任务持有，失败或过期时释放且排除借用原图；原a8构造器忽略的第一张裁剪图在确认无消费者后释放。已交给原界面安装逻辑的图不再主动回收，避免部分安装后异常导致界面持有已回收位图。三个后续界面回调各一个槽位，旧任务的子回调取消或执行前失效；重试计数与安排移到有效主线程，保留500ms与最多五次。

生产模块JVM12,073项断言，另继承LatestVisualWork已有8,024项模块证据；二者范围重叠不相加。源码/成品各260项（22桥接、238继承）。供D8的生产class与JVM测试class逐文件一致，模块DEX仅自有类，无测试替身。人工核对全部12处h2构造器，只有MainActivity使用selector1，其他路径保持；全局91引用/40方法清单仍待完整归属审查。

构建、对齐、签名、解析、最终回解、精确逆补丁、累计内容与22保护包检查通过。API扫描第一次漏读无显式访问修饰符字段，已修复声明解析器；5种字段声明与3个缺失/静态实例反例通过，未修改APK字段权限或忽略问题。修正后基线/候选均127项，无新增；完整API人工分类尚未完成，失败及resume日志保留。

JADX的BlurPipeline退出0；MainBlurHost/h2仅报告既有NavBarService.Ε的RegionMaker错误。a8默认因匿名类内联标记DONT_GENERATE而退出1，已用no-inline选项单独生成并复核，原失败日志保留。h2 Java错误显示空销毁守卫及成功提交后继续重试；最终smali有提前return和跳过retry的goto，新增执行场景确认。原回落壁纸选择也按最终smali核对，不能把Java当原源码。不声称全应用反编译或ART运行通过。

剩余：a2裁剪/stack-blur内部异常分配清理（R16脚本已准备但须独立测试构建），其他P1完整调用方、V2/V3的L01～L12+回引及P3配置/组合/API门禁。不能用本分项代替完整功能稳定版。

未来停车最小检查：连续切换壁纸/主题、反复开关面板、返回HOME观察背景，销毁/重开后无旧图覆盖或重复窗口；收集MainBlur、MainActivity、NavBarSvc和crash日志并记录内存走势。只做UI/只读观察，不发送车辆控制。失败先返回原车桌面保留日志，核对签名/版本/配置后恢复已验证V2。现在尚不到连接设备阶段，未实车候选不进正式交付目录。
'''
(OUT/'base10_r15_本地修复记录.md').write_text(doc,encoding='utf-8')
with (OUT/'本地整改进度.md').open('a',encoding='utf-8') as f:f.write('\n\n## 最新检查点：2026-09-10 BASE-10 R15\n\n'+doc.split('\n\n',1)[1])
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as f:f.write(f'\n\n## 55. BASE-10 R15主桌面模糊任务归属（2026-09-10）\n\nAPK zhiui-stability-local-base10-r15.apk，SHA256 `{v["sha256"]}`；20增量/119累计文件，260源码/成品场景、生产JVM12073断言、22保护包不变，API127无新增。单线程单等待生成、有效主线程缓存提交、三个独立子回调和重试归属；原算法保持。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r15_本地修复记录.md。内部位图异常清理R16及其余P1～P3未完成，未实车。\n')
with (OUT/'feature_matrix.md').open('a',encoding='utf-8') as f:f.write('\n2026-09-10 R15主桌面模糊任务/结果/子回调归属分项通过；内部异常位图清理及完整功能回引和总门禁未完成。\n')
p=OUT/'issues.csv'
with p.open(encoding='utf-8-sig',newline='') as f:rows=list(csv.DictReader(f))
for row in rows:
 if row['id']=='BASE-10':row.update(checkpoint='base10_r15',status='PARTIAL_LOCAL_PASS',local_action_or_result='R15主桌面模糊任务限流和结果/子回调归属通过，260源码成品场景、12073JVM断言；内部异常分配清理、其他调用方及P2/P3未完成。')
with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print('R15 scoped closeout recorded; full plan still active.')
