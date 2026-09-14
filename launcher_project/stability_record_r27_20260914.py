from pathlib import Path
import json,shutil
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1';tag='base10_r27'
v=json.loads((OUT/(tag+'_verification.json')).read_text(encoding='utf-8'));f=json.loads((OUT/(tag+'_finalize_status.json')).read_text(encoding='utf-8'));assert f['checks_passed']
c=json.loads((OUT/(tag+'_cumulative_content.json')).read_text(encoding='utf-8'));api=json.loads((OUT/(tag+'_cumulative_signature_check.json')).read_text(encoding='utf-8'));assert len(c['changed_files'])==166 and all(r['unchanged'] for r in c['protected_apks']) and not api['new_signature_findings']
(OUT/(tag+'_manual_audit.json')).write_text(json.dumps(dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=1,cumulative_files=166,source_final_case_groups=440,jadx=f['jadx'],review=['Removed only service onDestroy premature wrapper clear. Service qi field still clears; qi owns wrapper for already-queued close. Exact inverse preserves all other instructions.', 'Five actual scheduling/handoff cases plus435 inherited pass source/final. Parent late worker loses wrapper; candidate null/empty wrapper paths run full close with substitutes, live wrapper stops at first callback-detach invocation before native reflection.', 'Both worker-before-destroy and worker-after-destroy preserve the expected wrapper identity. Repeated field-release tail remains harmless. No actual camera release, native, renderer or GC guarantee.', 'JADX service exit3 retains one unrelated ImageButton/String method error; onDestroy now retains wrapper and clears service owner as intended, reviewed against final smali; historical unrelated decompilation error retained. No new API calls, one delta and166 cumulative files,22 protected packages unchanged,127 API candidates with no additions.'],limits='Does not serialize open/close, dispose old reconnect owner, handle all cleanup exceptions or bound external native work. Wrapper is deliberately reachable until owner/task/callback lifetime ends; complete lifetime audit pending.'),ensure_ascii=False,indent=2),encoding='utf-8')
doc='''# R27 影像异步关闭引用交接（2026-09-14）

APK D:/apk/zhiui-stability-local-base10-r27.apk
SHA256：`'''+v['sha256']+'''`
1增量/166累计文件，源码与成品各440组，22保护包未变，API127无新增。分项本地通过，未实车，完整本地计划未完成。

NavBarService销毁时原先先调用qi关闭（创建线程），随后把qi中的相机wrapper清空。晚到线程会取得null并跳过包装对象关闭。R27移除这处提前清空，让已排队任务继续通过原qi拿到同一个wrapper；服务自身qi引用仍按原流程清空。没有增加或执行任何厂商接口，未更改原打开/停止/释放正文。

5新增实际smali测试覆盖晚到空壳、晚到活动对象、null、重复清字段、线程先运行，继承435。父反例再次复现；空壳/null完整执行关闭分支，活动对象在首次解除回调调用处停止，原生反射不执行。精确逆补丁确认其余销毁正文不变。JADX服务退出3，仅保留原有ImageButton/String方法错误；onDestroy已明确显示wrapper不再提前清空、服务qi字段仍清空，与成品smali一致。

限制：这只是引用交接修复，未保证真实相机已释放。wrapper继续由qi/任务持有，外部回调注销失败或工作阻塞时可能延长生命周期。打开关闭仍非串行，旧owner重连、窗口动画、帧复用改写及Surface/Texture/EGL异常隔离尚未完成。下一项应完善资源线程/归属和逐项清理；R25四类清理异常证据、R26b交接证据均保留。

后续共享ADB/IME/其他等待、完整功能回引、API人工判定、配置升级回滚与组合门禁仍开放。暂不提出实车安装；完整本地门禁后用户停车验证服务关闭重开、影像重复进入退出并采集TurnSignalCamera/NavBarSvc/AndroidRuntime与crash日志。失败先回原车桌面并保留证据，核对签名/版本/配置后恢复已验证V2，不能擅自卸载。没有连接设备、清数据或写正式交付目录。
'''
(OUT/(tag+'_本地修复记录.md')).write_text(doc,encoding='utf-8')
b=OUT/'record_archive_before_r27';assert not b.exists();b.mkdir();paths=[ROOT/'PROJECT_MAP.md',OUT/'本地整改进度.md',ROOT/'智UI稳定性修复_新对话交接_20260913.md']
for p in paths:shutil.copy2(p,b/p.name)
with paths[0].open('a',encoding='utf-8') as p:p.write('\n\n## 75. R27影像关闭引用交接\n\n'+doc)
note='''# 最新检查点R27（2026-09-14，本地分项，未实车）

此段覆盖下方历史检查点。工作树launcher_project/diagnostics/stability_local_20260905_r1/worktrees/base10_camera_handoff_r27，成品final_redecode/base10_r27。父R26b及所有基线/恢复包保留。补丁stability_base10_camera_handoff_patch_20260914.py，测试test_base10_camera_handoff_20260914.py，manual_audit/finalize_status/verification/记录已完成。PROJECT_MAP第75节。不要重跑已存在树或无必要历史检查。

'''+doc+'\n\n以下保留历史：\n\n'
for p in paths[1:]:p.write_text(note+p.read_text(encoding='utf-8'),encoding='utf-8')
print('R27 recorded; camera resource lifecycle and full plan remain open.')

