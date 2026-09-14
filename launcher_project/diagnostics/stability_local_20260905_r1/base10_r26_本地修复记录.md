# R26影像共享位图回收（2026-09-13）

APK zhiui-stability-local-base10-r26.apk，SHA256 `1CB7C514ACE70C0912CEB7768667729B9DFB5934166CEDDD6D66CC787CF7D3F8`。3增量/166累计文件，源码成品各431组，22保护包未变，API127无新增。局部分项通过，未实车。

移除qi CPU、o.ˋ RGB565两条帧替换及ki关闭中的显式recycle；关闭仍清理自身Z/H引用，且不再因已回收跳过清Z。有效帧复用与像素写入保持，没有引入逐帧复制、无限缓存或新回收队列。代价是旧位图离开所有使用方后等待运行时回收，未测真实GC/峰值内存，不宣称所有内存风险消失。Android依据：https://developer.android.com/topic/performance/graphics/manage-memory 与 https://developer.android.com/reference/android/graphics/Bitmap 。

13新增实际smali组覆盖显示/关闭交错、重复、空/已回收以及两种帧替换与分配失败，继承418。JADX默认qi通过，ki正文占位、匿名callback不可单独生成；另用show-bad-code及no-inline-anonymous得到两个退出0补充输出，修改点与最终smali一致。旧伪源码条件还原不可信，按原smali交叉。

门禁曾因UTF8 JSON被Windows默认编码误读、测试依赖数字标签、累计白名单重复qi而失败。已修正显式UTF8与指令定位，仅删除新增列表中重复项；未放宽差异判断。旧工具/失败日志保留，最终门禁通过。APK未因工具修正重建。

继续查到NavBarService.onDestroy第四处影像位图recycle，需R26b补齐，R26作为保留检查点。完整生命周期仍有打开关闭并发、重连/窗口回调、共享帧改写与四类清理异常；camera_owner_map_r26.json收录11类实际方法/行/引用。无车辆、设备、安装、卸载或正式交付目录操作。
