from pathlib import Path
import json,shutil
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'
backup=OUT/'record_archive_before_r25';assert not backup.exists();backup.mkdir()
paths=[ROOT/'PROJECT_MAP.md',OUT/'本地整改进度.md',ROOT/'智UI稳定性修复_新对话交接_20260913.md']
for p in paths:shutil.copy2(p,backup/p.name)
v=json.loads((OUT/'base10_r25_verification.json').read_text());f=json.loads((OUT/'base10_r25_finalize_status.json').read_text());assert f['checks_passed']
review=['Six typed preference reads only: five qi constructor bindings and one tk settings flag. Original keys/defaults/register destinations retained; exact inverse verifies all other code unchanged.', 'CameraPreferences handles null and ClassCastException only, retains valid values including extreme integers, never coerces or writes preferences. Other runtime failures propagate. Exact production Java classes tested with99 assertions before D8; Android substitutes excluded from DEX.', '18 new actual smali binding/catch-dispatch groups plus400 inherited =418 source/final groups. Tests never execute native class initialization, camera reflection or vehicle commands.', 'JADX helper and qi exit0 agree with final smali; tk exit3, changed setChecked helper call is present and exact inverse confirms unchanged surrounding body. JADX is interpretation only.', 'Three delta files,164 cumulative,22 protected packages unchanged,127 API candidates with no additions; build/sign/align/parse/redecode/content gates pass.', 'Independent close-tail audit reproduces four downstream cleanup gaps after Surface, listener detach, SurfaceTexture or EGL exception. Camera cleanup, ownership and concurrency not fixed by R25.']
(OUT/'base10_r25_manual_audit.json').write_text(json.dumps(dict(status='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS',sha256=v['sha256'],delta_files=3,cumulative_files=164,source_final_case_groups=418,review=review,jadx=f['jadx'],limits='No ART/OEM/vehicle validation. No geometry bounds, camera resource lifetime or complete local plan pass.'),ensure_ascii=False,indent=2),encoding='utf-8')
doc='''# BASE-10 R25 影像配置类型容错（2026-09-13）

APK：D:/apk/zhiui-stability-local-base10-r25.apk
SHA256：`'''+v['sha256']+'''`
父版本R24及全部历史包保留。3增量/164累计文件，源码与成品各418组，22保护包未变，API127无新增。分项本地通过，完整计划未完成，未实车。

qi构造器的开关和宽/高/横/纵位置、tk设置页的影像开关，共六处读取改为CameraPreferences。配置值类型不符时返回原默认false/420/560/8/40；有效值保持，不做类型转换或回写。仅捕获ClassCastException，其他运行时错误不被掩盖。尺寸极值仍原样保留，本版不宣称几何限界。

真实生产Java类99断言后生成DEX；新增18组实际smali调用绑定与类型异常路径，继承400组。已复现父版本错误类型getter失败，验证六处回退。没有执行相机native初始化、反射前缀或任何车辆接口。构建、开发签名、对齐、解析、成品回解和累计核验通过。

JADX新模块/qi退出0并与成品交叉确认；tk退出3，修改点仍明确还原为CameraPreferences.flag调用；通过逆补丁确认其他正文未改，不把JADX错误当源码依据。

另存camera_cleanup_failure_r25_audit.json：执行原ki关闭尾部，替身注入Surface释放、监听移除、SurfaceTexture释放、EGL释放四类异常，均跳过后续位图等清理。正常路径也已验证。EGL效果本身为替身，未连接硬件。下一分项处理独立清理失败，再解决重连归属、打开关闭并发、帧位图借用和窗口动画。

后续仍有ADB/IME/其余等待、完整L01～L12+功能回引、127项API人工判定、配置升级回滚及组合门禁。媒体R22的6秒为协作预算，不能强制中断外部阻塞。

实车阶段由用户停车执行：已有正常配置启动及进入影像设置，检查开关与位置保持；异常配置恢复只在有备份的测试环境进行。失败先回原车桌面，收集AndroidRuntime/NavBarSvc/影像相关logcat，核对版本签名后恢复已验证V2；不得自行卸载或清数据。本轮未连接设备、安装或写正式交付目录。
'''
(OUT/'base10_r25_本地修复记录.md').write_text(doc,encoding='utf-8')
with paths[0].open('a',encoding='utf-8') as p:p.write('\n\n## 71. BASE-10 R25影像配置类型容错（2026-09-13）\n\n'+doc.split('\n\n',1)[1])
update='''# 最新续作检查点：R25（2026-09-13，本地分项，未实车）

此段覆盖下方历史检查点。APK D:/apk/zhiui-stability-local-base10-r25.apk，SHA256 `'''+v['sha256']+'''`；工作树worktrees/base10_camera_preferences_r25，最终回解final_redecode/base10_r25（均在launcher_project/diagnostics/stability_local_20260905_r1）。3增量/164累计，源码与成品418组，22保护包未变、API127无新增。manual_audit/finalize_status/verification/本地修复记录已完成，PROJECT_MAP第71节。完整计划未完成，未实车。

R25仅影像六处配置读取类型容错：CameraPreferences新模块，qi五处、tk一处；错误类型退原默认，合法值保持，不回写。生产Java99断言；18新增实际smali组加400继承。JADX模块/qi退出0，tk退出3但变更点与成品一致。补丁stability_base10_camera_preferences_patch_20260913.py，测试test_base10_camera_preferences_20260913.py；不重跑已存在工作树。

下一实际工作：影像关闭清理失败隔离。audit_camera_cleanup_failures_20260913.py与camera_cleanup_failure_r25_audit.json已复现ki关闭尾部四类异常使后续资源清理跳过；只有替身无硬件。再继续旧qi重连归属、打开关闭线程并发、帧位图借用与窗口动画，原厂商postEvent/setPanoOutputState不得执行或扩展。尚无R26工作树/APK。之后共享ADB/IME/其余等待、全部功能回引、API人工判定、升级回滚与组合门禁。所有基线、历史包、密钥与原车桌面恢复路径保留，不进入正式交付目录。

以下保留历史记录：

'''
for p in paths[1:]:p.write_text(update+p.read_text(encoding='utf-8'),encoding='utf-8')
print('R25 records complete; resource cleanup remains next, full plan open.')
