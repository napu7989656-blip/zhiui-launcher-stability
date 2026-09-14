# 智UI Launcher 稳定性修复

面向比亚迪海豚 2021 款时尚版、车机 13.1.22.2409213.1 的既有 Launcher 增量分析与修复项目。不是全新 Launcher；反编译内容不等于原始 Java/Kotlin 源码。

## 当前检查点

R28：媒体 URI 读取/清理、媒体生命周期与晚到重试、影像配置容错、共享位图回收、关闭引用交接及 EGL 清理异常隔离。

- 当前修改树：`launcher_project/diagnostics/stability_local_20260905_r1/worktrees/base10_camera_egl_r28`
- 源码与成品局部回归：473 组；累计166个文件可归属；API127个既有候选无新增。
- **完整本地计划尚未完成，R28 未实车验证。** 下一步包括 Surface/Texture 清理、打开关闭并发和后续完整门禁。
- 继续工作前阅读 `AGENTS.md`、`PROJECT_MAP.md` 和 `智UI稳定性修复_新对话交接_20260913.md`。

## 仓库内容

包含当前 apktool 修改树、自有 Java 模块与测试、历次补丁/变更记录、脚本、项目地图和交接文档。JADX只用于理解；当前行为以Manifest/资源/smali交叉确认。历史生成工作树、最终回解树、日志、APK、工具和实车照片没有上传。第三方内容保持原有权利归属，本仓库未授予再分发许可，默认使用私有仓库。

## 本地构建前提

现有脚本沿用 `D:/apk` 和固定 Android/JDK 工具路径，具体见 `launcher_project/build.ps1`。此仓库并非独立的一键编译原源码工程。完整历史回归还需要原本地归档中的父工作树、reference/final_redecode目录和工具；本仓库没有伪造或省略这些依赖的存在。

自行在受控本地环境补齐：

1. 权威基线 `ORIGINAL_BASELINE.apk`，SHA256 `93042E48C12ED395E8F5D450BE1285E0397897F685EE95AC4080763B6E6DCCD9`。
2. 已验证恢复包 `zhiui-final-v2.apk`，SHA256 `ADA7BD1DA144470F8C05BD24F0A7D8A27D00C435C0146D517F455D9F112FF1DC`。
3. 固定版本的 apktool/JDK/Android SDK 和原有项目开发 keystore。通过 `ZHIUI_KEYSTORE_PASSWORD`、`ZHIUI_KEY_PASSWORD` 环境变量提供口令，不提交口令或密钥。使用直接 `build.ps1` 或先设置环境变量再运行包装脚本；缺少本地凭据日志时不要依赖它的回退读取。

当前检查点构建示例（先补齐以上依赖，使用新的输出文件名）：

```powershell
& D:/apk/launcher_project/build.ps1 -DecodedDir D:/apk/launcher_project/diagnostics/stability_local_20260905_r1/worktrees/base10_camera_egl_r28 -OutputName zhiui-r28-rebuild-local.apk
```

构建/签名通过不代表实车功能通过。保留原车桌面及V2恢复路径；不主动运行车辆控制接口，不自行卸载，不将未验证包放入正式交付目录。

## 上传边界

只生成独立上传副本，原工作区、基线、keystore、历史 APK、照片和日志均未删除或修改。已识别的本地口令若出现在选定文本中，仅在副本替换为 `LOCAL_SECRET_NOT_INCLUDED`。上传清单和检查报告保存在仓库外的 `github_upload` 目录。
