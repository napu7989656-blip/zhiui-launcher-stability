# 当前工作入口

当前检查点 R28：launcher_project/diagnostics/stability_local_20260905_r1/worktrees/base10_camera_egl_r28。

R28 APK SHA-256：64C59826408BECB330B44C13A9968FA317ED4D7E8E7F32E7F55466E892F4825D。

迁移期间暂停稳定性修复，不从旧版本重新开始。R22～R24已处理媒体URI读取清理、manager生命周期和晚到重试；R25～R28处理影像偏好、共享位图回收、相机关闭引用及EGL清理异常隔离。

尚需处理 Surface/SurfaceTexture 清理、资源归属和打开关闭并发、重连旧实例失效、窗口动画和帧复用，再继续完整本地计划与功能回引。现有分项记录不代表 ART/native/实车验证通过。

保留原始基线、已验证V2、V3.11完整功能来源、R28当前修改树、自有模块、密钥和恢复资料。中间版本、重复产物、旧交接、截图和模拟器按用户要求清理；安卓环境不上传，换机复用已有工具。历史比较脚本引用被删父版本时需调整测试依赖，不能因此恢复全部历史版本。

GitHub Release 加密包提供保留项目，口令单独迁移，不上传GitHub。详见README.md。
