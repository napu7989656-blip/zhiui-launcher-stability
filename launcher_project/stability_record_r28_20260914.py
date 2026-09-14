from pathlib import Path
import json,shutil
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1';tag='base10_r28'
v=json.loads((OUT/(tag+'_verification.json')).read_text(encoding='utf-8'));f=json.loads((OUT/(tag+'_finalize_status.json')).read_text(encoding='utf-8'));assert f['checks_passed']
c=json.loads((OUT/(tag+'_cumulative_content.json')).read_text(encoding='utf-8'));api=json.loads((OUT/(tag+'_cumulative_signature_check.json')).read_text(encoding='utf-8'));assert len(c['changed_files'])==166 and all(r['unchanged'] for r in c['protected_apks']) and not api['new_signature_findings']
review=['qi EGL cleanup has four independent Exception handlers around the original four calls. Each resumes at the next original field read; three locals retained, exception temp v0 overwritten before next use. Original call order, null guards and field-clear tail retained.', 'Diagnostic Log.w(Throwable) uses a separate Exception guard so logging failure cannot skip later stages. Does not catch VM-fatal Errors or interrupt native blocking.', '33 actual-smali cases plus440 inherited pass source/final:16 failure subsets,4 logging failures,8 resource-presence combinations,1 false-return preservation,4 actual close-tail continuations. All four parent exceptions reproduced with skipped downstream calls.', 'One delta file,166 cumulative,22 protected packages unchanged,127 API candidates without additions. Build/sign/align/parse/redecode/content gates passed; JADX changed method and helper reviewed against final smali.', 'Clear fields after all attempts does not prove EGL release success; false results remain unchecked and null-display behavior unchanged. Resource-thread ownership, concurrent open/close, partial initialization and Surface/Texture cleanup remain open.']
(OUT/(tag+'_manual_audit.json')).write_text(json.dumps(dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=1,cumulative_files=166,source_final_case_groups=473,review=review,jadx=f['jadx'],limits='No real EGL/native/camera/ART/vehicle execution. No full plan or whole camera resource lifetime pass.'),ensure_ascii=False,indent=2),encoding='utf-8')
doc='''# R28 EGL清理异常隔离（2026-09-14）

APK D:/apk/zhiui-stability-local-base10-r28.apk
SHA256：`'''+v['sha256']+'''`
1增量/166累计文件，源码与成品各473组，22保护包未变，API127无新增。局部分项本地通过，完整计划未完成、未实车。

qi清理方法原先在解绑、销毁Surface、销毁Context或Terminate任一步抛异常时退出。R28为四个原调用分别隔离Exception，记录异常后继续后续步骤；记录日志自身也有独立异常保护。原调用顺序、空资源判断和最后清字段保持，不改变创建资源、厂商接口或车辆控制逻辑。

33新增组覆盖16种异常组合、4种日志失败、8种资源存在组合、返回false原行为及4种真实ki关闭尾部继续清理，继承440组。四种父版本中断反例已复现。所有EGL/Log均为替身，未执行真实原生调用；不是实车、线程调度或真实资源释放证明。成品与源码及逆补丁一致，JADX修改方法/日志辅助方法与smali交叉确认。

边界：这里只保证可恢复Exception后继续尝试，清引用不等于原生资源释放成功。EGL返回false仍未检查，display为null时保持原行为，VM致命Error与原生阻塞不在恢复范围。资源部分创建回滚、线程归属、打开关闭串行化及重连失效仍未解决。Surface.release、SurfaceTexture监听移除/释放的异常隔离仍待处理；R25旧反例及R26b/R27交接证据保留。

下一工作从R28继续影像资源清理与并发归属，随后共享ADB/IME/其他等待、完整功能回引、API人工判定、配置升级回滚和组合门禁。不得用473局部组宣称全部完成。完整本地门禁前不提出车机安装；之后由用户停车检查影像开关/关闭重开/重复进出，采集TurnSignalCamera/NavBarSvc/AndroidRuntime及crash日志。失败先回原车桌面，保留证据并核对签名版本配置，再恢复已验证V2；不能自行卸载。基线/所有历史包/恢复路径保留，本轮没有设备或正式交付目录操作。
'''
(OUT/(tag+'_本地修复记录.md')).write_text(doc,encoding='utf-8')
b=OUT/'record_archive_before_r28';assert not b.exists();b.mkdir();paths=[ROOT/'PROJECT_MAP.md',OUT/'本地整改进度.md',ROOT/'智UI稳定性修复_新对话交接_20260913.md']
for p in paths:shutil.copy2(p,b/p.name)
with paths[0].open('a',encoding='utf-8') as p:p.write('\n\n## 76. R28 EGL清理异常隔离\n\n'+doc)
note='''# 最新检查点R28（2026-09-14，本地分项，未实车）

覆盖下方所有旧检查点。工作树launcher_project/diagnostics/stability_local_20260905_r1/worktrees/base10_camera_egl_r28，成品final_redecode/base10_r28。父R27及所有基线/恢复包保留。补丁stability_base10_camera_egl_patch_20260914.py，测试test_base10_camera_egl_20260914.py，manual_audit/finalize_status/verification与记录完成。PROJECT_MAP第76节；无需重跑旧版本或现有工作树。

'''+doc+'\n\n以下保留历史：\n\n'
for p in paths[1:]:p.write_text(note+p.read_text(encoding='utf-8'),encoding='utf-8')
print('R28 recorded; remaining camera cleanup/concurrency and full plan open.')
