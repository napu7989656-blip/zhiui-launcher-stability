## 46. BASE-10 r7 仪表读取、缓存和重试归属（2026-09-09，未实车）

当前本地检查点 `D:/apk/zhiui-stability-local-base10-r7.apk`，SHA-256 `A6F8582C03408F2B8FD94780944DCC114D372014A02C80E4B32DF6A2F0D00806`，父版本r6保留。仪表初始化je selector1与刷新ie selector28共用每控制器独立InstrumentReads状态；查询仍在原有有界池，原getBacklightBrightness、合法范围12～22、亮度换算和操作请求体保持。正常初始化成功也更新同一缓存，避免保留旧刷新缓存。

缓存/原显示回调与重试计数统一在所属主线程检查查询、生命周期、Service和面板身份后更新。若已有活动面板，仅接受该活动面板，不能让旧预备面板通过身份检查后借de更新新活动面板。原缓存预填保留，检查缓存值/生命周期；开始新查询不使有效预填失效。两个普通关闭入口、永久销毁、仪表拖动开始/结束均使旧结果失效。未改变用户调节发出的请求或换算。

重试回调由模块保存和取消，保留150/350/700/1200/2000ms五级等待；无效刷新才重试，初始化无效不新增重试。成功结果清零计数；投递失败不留下等待标志、不消费重试次数；旧回调即便移除失败也不能复活旧查询。重复结果、异常和关闭后结果都经过有效性检查。每控制器分别至多保留一个待结果、一个待缓存预填、一个待重试引用。

生产Java实际JVM线程与10,000次连续提交共30,213项断言通过；源码和成品真实host/构造/提交/拖动分支及原导航23项、九处提交、主题/队列/60入口/15清理回归通过。查询和用户操作通过精确恢复比对，未执行厂商请求。首次构建发现拖动补丁也插入packed-switch载荷，失败日志保留；修正为只插入实际首个标签定义并新增载荷结构检查后构建通过。

构建、zipalign、开发签名、aapt/apkanalyzer、最终apktool回解及差异通过：增量11文件，累计73文件可归属，22保护APK哈希/原资源声明保持，Android29候选127无新增。JADX Host退出3仍是已知Service方法错误；InstrumentReads退出0但匿名发布回调呈现空try，已核对最终InstrumentReads$2 smali，commit与delegate位于RuntimeException保护范围内。JADX不作为可编译原码或准确行为依据。

证据：`base10_r7_verification.json`、`base10_r7_branch_tests_final.json`、`base10_r7_manual_audit.json`、累计检查、`modules/instrument_reads_r1/jvm_tests.txt`、构建/回解/JADX日志。可维护源码 `launcher_project/stability_modules/src/com/byd/launcher/stability/InstrumentReads.java`；接线脚本 `stability_base10_instrument_patch_20260909.py`，新增InstrumentReadHost smali只桥接既有所有者字段/Handler。

仍继续本地工作：磁贴缓存/结果、SOC/主题代次、等待中断与操作回调、玻璃后台任务、V2/V3回引、完整调用方/API人工复核及组合门禁。r7不是整个BASE-10或全计划完成，测试不是ART/真实窗口/native。未连接车机、未安装、未进入正式目录。

实车仅在全部本地门禁通过后，由用户安全停车观察面板反复开关和仪表读数同步；本地通过后再给最终最小步骤。失败保留QuickSettingsMgr/AndroidRuntime日志和画面，先返回原车桌面，按签名/配置兼容核对回滚已验证V2；不卸载、不清数据、不做车辆控制试验。
