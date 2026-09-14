from pathlib import Path
import json,shutil
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1';tag='base10_r26b'
v=json.loads((OUT/(tag+'_verification.json')).read_text(encoding='utf-8'));f=json.loads((OUT/(tag+'_finalize_status.json')).read_text(encoding='utf-8'));assert f['checks_passed']
c=json.loads((OUT/(tag+'_cumulative_content.json')).read_text(encoding='utf-8'));assert len(c['changed_files'])==166 and all(r['unchanged'] for r in c['protected_apks'])
review=['Service onDestroy bitmap retirement clears Z/H without explicit recycle. Exact inverse preserves all other onDestroy operations, including remaining asynchronous resource handoff issues.', 'Four new actual retirement groups plus431 inherited=435 source/final groups. Parent recycle reproduced; all four direct Z holder classes inventoried. No whole service destruction, renderer, GC, native camera or vehicle execution.', 'JADX service exit3 has one historical ImageButton/String method error; onDestroy null assignments visible at lines1376-1377, checked against final smali and exact inverse. R26 supplemental callback/ki JADX outputs establish the prior three changes.', 'One delta/166 cumulative files,22 protected hashes unchanged,API127 no new; build/sign/align/parse/redecode/content pass.', 'R26b completes explicit recycle removal at all four direct camera Z retirement sites. Does not fix shared mutable frame reuse, asynchronous camera cleanup/handoff or old owner callbacks.']
(OUT/(tag+'_manual_audit.json')).write_text(json.dumps(dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=1,cumulative_files=166,source_final_case_groups=435,review=review,jadx=f['jadx'],limits='No complete camera lifecycle, full local plan, ART/OEM/vehicle or bounded GC guarantee.'),ensure_ascii=False,indent=2),encoding='utf-8')
doc='''# R26b影像共享位图销毁补齐（2026-09-14）

APK D:/apk/zhiui-stability-local-base10-r26b.apk
SHA256：`'''+v['sha256']+'''`
1增量/166累计文件，源码与成品各435组，22保护包未变，API127无新增。分项本地通过，完整计划未完成、未实车。

继承R26两条帧替换与关闭路径修复，再移除NavBarService.onDestroy影像位图显式recycle，清理自身Z/H引用。四个直接持有工作位图的类全部清点；R26/R26b合计四处退休路径不再让显示方持有的位图失效。没有更改原生转换、车辆接口、正常帧复用或增加逐帧复制。旧位图需等待所有引用释放及运行时回收，真实GC/峰值内存未验证。

新增4组实际smali销毁片段覆盖显示别名、空位图、已回收引用和重复清理，继承431；父版本显式回收反例已复现。成品源码一致、精确逆补丁确认销毁其他正文保持。JADX服务退出3，错误仍在原有ImageButton/String方法；onDestroy第1376～1377行明确显示清Z/H，已按最终smali逐点确认；R26的匿名callback和ki另有补充Java审查记录。

新增camera_wrapper_handoff_r26b_audit.json已用实际关闭调度、销毁清字段及完整ki关闭selector复现晚到任务拿到空wrapper；所有原生效果均为替身。仍待处理：服务销毁先启动异步关闭、随后清相机wrapper字段；线程可能晚读字段，资源交接尚未解决。打开与关闭线程未串行，重连旧owner/窗口动画与帧回调未统一失效，显示位图仍会被生产者复用改写。四种Surface/Texture/EGL清理异常仍可能跳过后续阶段。下一分项应优先实际复现wrapper交接/过期任务，设计串行资源归属，再隔离清理异常。不得宣称影像生命周期已闭环。

其后继续共享ADB/IME/其他等待、完整L01～L12+回引、API127人工判定、配置升级回滚和组合门禁。当前不请求实车；完整本地门禁后由用户安全停车验证影像开关/窗口进出/服务关闭重开，观察黑屏、旧画面、重复窗或崩溃，采集AndroidRuntime/TurnSignalCamera/NavBarSvc及crash缓冲日志。失败先回原车桌面，保留截图日志，核对签名/版本/配置后恢复已验证V2，卸载仍需明确授权。未连接设备、未安装、未清数据、未写D:/output/zhiui/clear。

Android位图回收依据：https://developer.android.com/topic/performance/graphics/manage-memory 。源脚本、成品日志、R26工具修正/失败日志及所有历史包均保留。
'''
(OUT/(tag+'_本地修复记录.md')).write_text(doc,encoding='utf-8')
backup=OUT/'record_archive_before_r26b';assert not backup.exists();backup.mkdir()
paths=[ROOT/'PROJECT_MAP.md',OUT/'本地整改进度.md',ROOT/'智UI稳定性修复_新对话交接_20260913.md']
for p in paths:shutil.copy2(p,backup/p.name)
with paths[0].open('a',encoding='utf-8') as p:p.write('\n\n## 74. R26b影像位图销毁补齐\n\n'+doc)
note='''# 最新检查点R26b（2026-09-14，本地分项，未实车）

此段覆盖下方所有旧当前检查点。工作树launcher_project/diagnostics/stability_local_20260905_r1/worktrees/base10_camera_bitmap_r26b，成品回解final_redecode/base10_r26b。父R26和R25及基线全部保留。补丁stability_base10_camera_destroy_bitmap_patch_20260913.py，测试test_base10_camera_destroy_bitmap_20260913.py；不要重跑已存在树。manual_audit/finalize_status/verification与记录已完成，PROJECT_MAP第74节。

'''+doc+'\n\n以下保留历史：\n\n'
for p in paths[1:]:p.write_text(note+p.read_text(encoding='utf-8'),encoding='utf-8')
print('R26b recorded; full plan and resource handoff remain open.')


