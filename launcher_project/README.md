# Launcher 逆向与重建工作树

本目录从 `D:\apk\ORIGINAL_BASELINE.apk` 派生，不会覆盖原始 APK。

## 目录

- `apktool\`：apktool 3.0.2 解码结果；后续资源/XML/smali 修改的工作树。
- `jadx\`：JADX 1.5.5 伪源码和资源视图；只用于理解与检索。
- `.jadx-config\`、`.jadx-cache\`：JADX 在当前受限环境中的本地配置和缓存。
- `build\`：未签名与 zipalign 后的中间产物。
- `analyze_baseline.ps1`：在全新、尚不存在的输出目录中重新执行 aapt、签名检查、apktool 和 JADX 分析。
- `build.ps1` / `build.bat`：从 `apktool\` 重建、对齐、签名并验证 APK。

## 构建

在 PowerShell 中运行：

```powershell
cd D:\apk\launcher_project
.\build.ps1 -OutputName Launcher_V0.1.apk
```

也可以双击/从命令行调用：

```bat
D:\apk\launcher_project\build.bat -OutputName Launcher_V0.1.apk
```

脚本默认使用 `D:\apk\zhiui-v2.keystore`，并安全提示输入密码。自动化环境可临时设置 `ZHIUI_KEYSTORE_PASSWORD`；若私钥密码不同，再设置 `ZHIUI_KEY_PASSWORD`。脚本不保存密码。

脚本默认拒绝覆盖已有 APK；只有明确传入 `-Force` 才会覆盖本次输出名对应的三个精确构建文件。不要对已实车验证的 APK 使用相同输出名。

## 重新分析

`analyze_baseline.ps1` 不会覆盖现有输出。需要重新分析时必须指定新的目录，例如：

```powershell
.\analyze_baseline.ps1 `
  -ApktoolOutput D:\apk\launcher_project\apktool_fresh `
  -JadxOutput D:\apk\launcher_project\jadx_fresh
```

JADX 可能对部分复杂/混淆方法返回非零状态，但仍生成绝大多数源码。所有失败方法以 `apktool\smali` 为准。

当前 `Launcher_Rebuild_Test.apk` 仍处于“静态验证通过、待实车验证”状态；在实车确认前不要开始正式功能修改。



2026-09-08 状态更正：上面的零修改待实车门禁是早期记录；PROJECT_MAP 第 14/16 节及 diagnostics/stability_local_20260905_r1/baseline_gate.md 已记录用户后续确认。当前按用户授权执行本地优先整改，检查点为 BASE-09 r3；全部本地门禁及 V2/V3 完整功能未完成，未连接车机。详见本地整改进度.md。

本地检查点更新为 BASE-10 r1（2026-09-08）：两条快捷设置队列增加所属控制器投递/执行保护。全部本地门禁仍未完成，详细状态见 diagnostics/stability_local_20260905_r1/本地整改进度.md。

当前本地检查点更新为 BASE-10 r2（2026-09-08）：系统主题查询结果经所属主线程发布，校验Service身份及观察到的偏好；完整本地门禁仍未完成。详见 PROJECT_MAP 第42节及本地整改进度.md。

当前本地检查点更新为BASE-10 r4（2026-09-08）：九处后台读取接入有界线程池并完成成品核验。完整本地检查仍未完成，最新范围见diagnostics/stability_local_20260905_r1/本地整改进度.md。


当前本地检查点为BASE-10 r6（2026-09-08）：导航查询失效、缓存/界面受控发布及读取队列类别纠正；完整本地门禁仍未完成。见diagnostics/stability_local_20260905_r1/本地整改进度.md。


2026-09-09当前本地检查点BASE-10 r7：InstrumentReads生产模块接入仪表初始化/刷新/缓存预填/重试及关闭/拖动失效，JVM与源码/成品检查通过；整个本地阶段仍未完成，继续磁贴与剩余项目。详见本地整改进度.md和base10_r7_本地修复记录.md。


2026-09-09本地稳定性最新检查点BASE-10 r9b，尚未完成全部本地检查，未实车。当前进度及证据见diagnostics/stability_local_20260905_r1/本地整改进度.md。
