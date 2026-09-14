from pathlib import Path
import json,shutil
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1';tag='base10_r26'
v=json.loads((OUT/(tag+'_verification.json')).read_text());f=json.loads((OUT/(tag+'_finalize_status.json')).read_text());assert f['checks_passed']
assert (OUT/'base10_r26_camera_callback_review.java').exists() and (OUT/'base10_r26_camera_close_review.java').exists()
(OUT/(tag+'_manual_audit.json')).write_text(json.dumps(dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=3,cumulative_files=166,source_final_case_groups=431,jadx=f['jadx'],review=['qi CPU/preview RGB565 replacement drops recycle of potentially published bitmap; ki close clears Z/H without recycle, including already-recycled owner reference. Other bodies exact inverse unchanged.', '13 actual-smali groups plus418 inherited, source/final pass. Production/native/renderer/GC timing not executed.', 'JADX qi exit0 agrees; ki default run placeholder, show-bad-code exit0 exposes null assignments. Anonymous callback default DONT_GENERATE, no-inline-anonymous/show-bad-code exit0 exposes replacement without recycle. Existing callback guard pseudocode inversion is not trusted; unchanged smali is authority.', 'Three delta/166 cumulative files,22 protected hashes unchanged,API127 no new. Build/sign/align/parse/final decode passed.', 'Discovered fourth retirement in service onDestroy after async close scheduling; not changed in R26. R26b will remove that explicit recycle. All four direct Z holder classes inventoried; complete camera lifetime not solved.'],limits='Shared mutable frame reuse, renderer lifetime, async camera resource ownership and cleanup exceptions remain open. No full plan or vehicle pass.'),ensure_ascii=False,indent=2),encoding='utf-8')
doc='''# R26影像共享位图回收（2026-09-13）

APK zhiui-stability-local-base10-r26.apk，SHA256 `'''+v['sha256']+'''`。3增量/166累计文件，源码成品各431组，22保护包未变，API127无新增。局部分项通过，未实车。

移除qi CPU、o.ˋ RGB565两条帧替换及ki关闭中的显式recycle；关闭仍清理自身Z/H引用，且不再因已回收跳过清Z。有效帧复用与像素写入保持，没有引入逐帧复制、无限缓存或新回收队列。代价是旧位图离开所有使用方后等待运行时回收，未测真实GC/峰值内存，不宣称所有内存风险消失。Android依据：https://developer.android.com/topic/performance/graphics/manage-memory 与 https://developer.android.com/reference/android/graphics/Bitmap 。

13新增实际smali组覆盖显示/关闭交错、重复、空/已回收以及两种帧替换与分配失败，继承418。JADX默认qi通过，ki正文占位、匿名callback不可单独生成；另用show-bad-code及no-inline-anonymous得到两个退出0补充输出，修改点与最终smali一致。旧伪源码条件还原不可信，按原smali交叉。

门禁曾因UTF8 JSON被Windows默认编码误读、测试依赖数字标签、累计白名单重复qi而失败。已修正显式UTF8与指令定位，仅删除新增列表中重复项；未放宽差异判断。旧工具/失败日志保留，最终门禁通过。APK未因工具修正重建。

继续查到NavBarService.onDestroy第四处影像位图recycle，需R26b补齐，R26作为保留检查点。完整生命周期仍有打开关闭并发、重连/窗口回调、共享帧改写与四类清理异常；camera_owner_map_r26.json收录11类实际方法/行/引用。无车辆、设备、安装、卸载或正式交付目录操作。
'''
(OUT/(tag+'_本地修复记录.md')).write_text(doc,encoding='utf-8')
backup=OUT/'record_archive_before_r26';assert not backup.exists();backup.mkdir()
paths=[ROOT/'PROJECT_MAP.md',OUT/'本地整改进度.md',ROOT/'智UI稳定性修复_新对话交接_20260913.md']
for p in paths:shutil.copy2(p,backup/p.name)
with paths[0].open('a',encoding='utf-8') as p:p.write('\n\n## 73. R26影像共享位图回收\n\n'+doc)
note='# 当前检查点R26（未实车；待R26b补齐销毁路径）\n\n'+doc+'\n\n以下保留历史：\n\n'
for p in paths[1:]:p.write_text(note+p.read_text(encoding='utf-8'),encoding='utf-8')
print('R26 recorded as scoped parent; R26b service retirement next.')
