# R26b影像共享位图销毁补齐（2026-09-14）

APK D:/apk/zhiui-stability-local-base10-r26b.apk
SHA256：`7A60DFA3C91265A3C9265DECE86D22BAC7B3BFC484F9074228258303D1F3AE8B`
1增量/166累计文件，源码与成品各435组，22保护包未变，API127无新增。分项本地通过，完整计划未完成、未实车。

继承R26两条帧替换与关闭路径修复，再移除NavBarService.onDestroy影像位图显式recycle，清理自身Z/H引用。四个直接持有工作位图的类全部清点；R26/R26b合计四处退休路径不再让显示方持有的位图失效。没有更改原生转换、车辆接口、正常帧复用或增加逐帧复制。旧位图需等待所有引用释放及运行时回收，真实GC/峰值内存未验证。

新增4组实际smali销毁片段覆盖显示别名、空位图、已回收引用和重复清理，继承431；父版本显式回收反例已复现。成品源码一致、精确逆补丁确认销毁其他正文保持。JADX服务退出3，错误仍在原有ImageButton/String方法；onDestroy第1376～1377行明确显示清Z/H，已按最终smali逐点确认；R26的匿名callback和ki另有补充Java审查记录。

新增camera_wrapper_handoff_r26b_audit.json已用实际关闭调度、销毁清字段及完整ki关闭selector复现晚到任务拿到空wrapper；所有原生效果均为替身。仍待处理：服务销毁先启动异步关闭、随后清相机wrapper字段；线程可能晚读字段，资源交接尚未解决。打开与关闭线程未串行，重连旧owner/窗口动画与帧回调未统一失效，显示位图仍会被生产者复用改写。四种Surface/Texture/EGL清理异常仍可能跳过后续阶段。下一分项应优先实际复现wrapper交接/过期任务，设计串行资源归属，再隔离清理异常。不得宣称影像生命周期已闭环。

其后继续共享ADB/IME/其他等待、完整L01～L12+回引、API127人工判定、配置升级回滚和组合门禁。当前不请求实车；完整本地门禁后由用户安全停车验证影像开关/窗口进出/服务关闭重开，观察黑屏、旧画面、重复窗或崩溃，采集AndroidRuntime/TurnSignalCamera/NavBarSvc及crash缓冲日志。失败先回原车桌面，保留截图日志，核对签名/版本/配置后恢复已验证V2，卸载仍需明确授权。未连接设备、未安装、未清数据、未写D:/output/zhiui/clear。

Android位图回收依据：https://developer.android.com/topic/performance/graphics/manage-memory 。源脚本、成品日志、R26工具修正/失败日志及所有历史包均保留。
