from pathlib import Path
import json,shutil,hashlib
ROOT=Path('D:/apk');P=ROOT/'launcher_project';OUT=P/'diagnostics/stability_local_20260905_r1'
backup=OUT/'record_archive_before_r22';assert not backup.exists();backup.mkdir()
for p in [ROOT/'PROJECT_MAP.md',OUT/'本地整改进度.md',ROOT/'智UI稳定性修复_新对话交接_20260913.md']:shutil.copy2(p,backup/p.name)
v=json.loads((OUT/'base10_r22_verification.json').read_text());c=json.loads((OUT/'base10_r22_cumulative_content.json').read_text());f=json.loads((OUT/'base10_r22_finalize_status.json').read_text())
assert f['checks_passed'] and not v['unexpected_final_business_changes']
review=[
'URI helper delegates to own Java reader; active Host overload forwards the exact request and actual Application Context. Both snapshot URI sources use the overload. Original session/metadata/rating/title code unchanged.',
'No background URI cache reads/writes; existing valid-main-thread display cache kept. Avoids stale cache mutation and stale same-URL image reuse, at cost of rereading repeated HTTP URLs.',
'Encoded input <=4 MiB, bounded 8 KiB read buffer, 6-second monotonic per-URI budget across redirects/read/decode checks, shrinking HTTP timeouts <=2 seconds; <=3 redirects, HTTP(S) only. Source dimensions <=32768 per axis and <=64 million pixels; sampled output <=1024 per axis checked again after decode.',
'HTTP final smali keeps stream v5 and connection v4 through catchall_2; both normal/redirect/error paths call close then disconnect. JADX falsely prints close(null) in exception path and omits disconnect in some finally blocks. read() Java pseudo-source also misreconstructs zero-progress counter reset; final smali and production Java remain authoritative.',
'Content stream catchall closes actual handle; decode-result p0 is assigned before deadline/size validation; typed catch_1 recycles rejected bitmap, catchall_2 moves p0 to v0 for recycle then original error rethrow. No metadata/cache borrowed bitmap is passed to reader recycling.',
'JVM executed exact production class bytes: 133 IO/dimension assertions, 32 Android substitute assertions, inherited Work12050/Pipeline38; 371 source and final bridge/inherited groups. No ART/native decoder or external network claim.',
'P3 scanner old put omission reproduced; get/put static/instance/missing-field 36 checks pass. Full rescan baseline/candidate still127, no new declarations issue. goto and packed-switch verifier untouched.',
'APK13 incremental/157 cumulative files,22 protected APKs unchanged. R21 remains intact; all URI changes exactly invert to R21.']
record=dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=len(v['changed_files']),cumulative_files=len(c['changed_files']),source_final_case_groups=371,review=review,jadx=f['jadx'],limits='6s is a boundary-checked budget, not hard termination of ContentProvider/Binder/native/DNS/HTTP internal header reads or close. No extra timeout threads. Request invalidation aborts at next check, not asynchronous disconnect. Each retry/fallback starts its own <=6s budget. URI bitmap handoff remains GC-managed after leaving reader; never blindly recycle potentially borrowed scale/UI objects. Full media manager lifecycle and P1/P2/P3 remain open; no vehicle test.')
(OUT/'base10_r22_manual_audit.json').write_text(json.dumps(record,ensure_ascii=False,indent=2),encoding='utf-8')
mod=OUT/'modules/media_uri_r22'
classes={p.relative_to(mod/'classes').as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in (mod/'classes').rglob('*.class')}
(mod/'production_class_manifest.json').write_text(json.dumps(dict(classes=classes,test_and_d8_class_directory_same=True,test_stubs_excluded_from_dex=True),indent=2),encoding='utf-8')
doc='''# BASE-10 R22 媒体 URI 有界读取与异常清理（2026-09-13）

当前分项本地通过，完整计划未完成，未实车。父版本R21及所有恢复路径保留。

APK：D:/apk/zhiui-stability-local-base10-r22.apk
SHA256：`'''+v['sha256']+'''`
工作树：worktrees/base10_media_uri_r22；最终回解：final_redecode/base10_r22。

## 改动与功能影响

原a9 URI读取入口转入自有Java模块；活动封面管线把本次request传给读取器，过期后在IO边界退出。流在成功、读取异常和严重错误路径关闭，HTTP连接在所有取得连接后的退出路径断开。移除旧URL缓存读写，避免过期缓存写入及同URL复用旧图；有效主线程显示缓存保持。重复HTTP URL可能重新读取，这是明确的行为取舍。

响应最多4 MiB；单URI使用6秒单调时钟预算，跨重定向/读取/解码边界检查，HTTP单次超时不超过2秒且按剩余预算缩短。最多3次HTTP(S)重定向；无进展流最多8次。先读尺寸，源图每边不超过32768且不超过6400万像素，采样后每边不超过1024，解码后再次验证。流在解码前已关闭；拒绝的自有解码图回收，不回收元数据或显示缓存借用图。

6秒不是对ContentProvider/Binder、DNS、HTTP内部读头、native解码或close的强制终止承诺。请求失效在下个检查点退出，没有额外异步disconnect线程。每次重试/备用URI各有独立预算；完整请求可能多次读取。外部阻塞、整体管理器清理与UI下游归属仍须继续处理。

## 证据

- 13增量/157累计文件，精确逆补丁还原R21，源码/成品各371组桥接与继承用例。
- 真实生产class直接用于JVM测试和D8：IO/尺寸133断言，Android框架替身32断言，Work12050与Pipeline38断言。不是ART或真实网络/原生解码证明。
- 构建、对齐、开发签名、属性、独立回解与成品一致通过；22保护包未变。
- P3扫描修正get/put遗漏并通过36用例，重新扫描仍为基线/候选各127，无新增。127项人工判定尚未完成。
- JADX两新类退出0，a9退出3源于既有NavBarService.Ε错误。JADX漏还原HTTP异常流引用/disconnect、零进展计数和部分decode catch；最终smali异常区间、保存寄存器、清理/重抛与生产Java交叉确认，详见manual_audit.json。
- 首次模块测试编译缺少仅测试所用LatestVisualWork依赖，补到测试输出后通过；旧日志保留，测试替身未进入DEX。

关键脚本：stability_base10_media_uri_patch_20260913.py、test_base10_media_uri_20260913.py、test_media_uri_android_20260913.py。源码快照及生产class位于modules/media_uri_r22。原R21模块不覆盖。

## 后续与恢复

下一项：重复manager、活动会话监听与初始化/销毁清理；ea selector15能重置destroyed且在延迟执行时取当前manager，llI selector15只关闭旧封面owner，尚未释放旧manager。继续其他P1、全部L01～L12+功能回引和P3配置/API/组合门禁，不能把本分项当全计划完成。

本地门禁完成后再由用户安全停车验证：切歌/换播放器、无封面/错误URI、暂停恢复及退出重进，观察旧封面不覆盖新歌，采集MusicCtrlMgr/媒体会话/crash与同状态内存日志。不得在实车故意制造OOM或网络攻击。失败先返回原车桌面、保留证据，核对签名/版本/配置后恢复已验证V2；R21/R22仅为本地检查点。未实车包不进D:/output/zhiui/clear，当前不连接或安装设备。
'''
(OUT/'base10_r22_本地修复记录.md').write_text(doc,encoding='utf-8')
with (ROOT/'PROJECT_MAP.md').open('a',encoding='utf-8') as stream:stream.write('\n\n## 68. BASE-10 R22媒体URI读取与清理（2026-09-13）\n\nAPK zhiui-stability-local-base10-r22.apk，SHA256 `'+v['sha256']+'`；13增量/157累计文件，源码/成品371组，生产IO133/Android替身32断言，22保护包未变。URI异常清理、字节/尺寸/预算与过期检查接入；移除旧URL缓存写入。P3 get/put扫描修正36用例通过，基线/候选仍127且无新增。JADX新类清理还原失真已以最终smali交叉确认。外部阻塞非强制超时；重复manager/监听及完整P1/P2/P3未完成、未实车。详见launcher_project/diagnostics/stability_local_20260905_r1/base10_r22_本地修复记录.md。\n')
p=OUT/'本地整改进度.md';old=p.read_text(encoding='utf-8');p.write_text('# 当前状态：2026-09-13 BASE-10 R22\n\n最新本地APK为R22，SHA256 `'+v['sha256']+'`。URI分项证据见base10_r22_本地修复记录.md；完整本地计划未完成，未实车。下一项重复manager与活动会话监听释放，随后其余P1、完整功能回引和P3。下文R21为历史记录。\n\n'+old,encoding='utf-8')
print('R22 scoped record and PROJECT_MAP68 saved; full plan remains open.')
