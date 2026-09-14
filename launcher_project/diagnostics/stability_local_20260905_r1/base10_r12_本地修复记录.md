# BASE-10 R12 状态等待超时与中断（2026-09-10）

候选 `D:/apk/zhiui-stability-local-base10-r12.apk`，SHA-256 `05575825A4F09761D076F91A8DD22FE03157C9D4E20A8645AB860DD19BD3AFAF`；父R11保留。本轮4文件增量，累计98文件；仍未实车，完整本地计划未完成。

三处2秒CountDownLatch等待只在成功后读回调数组。超时使用-1：通用读取返回失败，仪表沿原无效值路径（刷新保留原重试，初始化跳过显示）。中断由独立catch恢复线程中断标志并退出，不继续发布或重试。通用读取在IPC前拒绝已中断线程；磁贴发布入口也拒绝中断线程，避免把失败回落缓存当成新状态提交。原请求、参数、2秒等待及车辆分支保持，没有执行真实IPC或控制。

已人工核对ff、ie selector28、je selector1、TileSnapshots.post及te/ve局部数组回调；SOC原值域判断拒绝-1，磁贴由新增发布守卫保护。寄存器/正常与超时分支、typed catch覆盖及先于Exception的顺序已按最终smali确认。晚回调仅更新本次数组并countDown，无UI引用，不复活已退出任务。

源码与成品各194项场景（11等待、183继承），精确逆补丁恢复R11。首次成品测试依赖源码标签截取失败；已按实际跳转目标/导航读取字段定位，原失败日志保留，resume记录分开。构建、对齐、开发签名、aapt/apkanalyzer、最终回解、增量/累计内容通过；22保护APK不变，Android29候选127无新增，完整API人工判定仍待完成。

JADX限制必须保留：ie.run未完整反编译并出现类型推断警告，任务另有既有NavBarService.Ε的RegionMaker错误。je输出把已销毁守卫显示为空、把catch次序显示成嵌套；最终smali实际有return-void，InterruptedException在同一await区间先于Exception。不能用JADX Java执行或推断这里的异常语义。见manual_audit.json及logs/base10_r12_jadx_*。

测试解释器注入await成功/超时并执行实际处理分支和catch体，另检查catch表关联；不是ART、实际线程中断或厂商IPC运行证明。没有主动打断正在运行的厂商/native调用。

后续：玻璃背景x9线程/回写、MainActivity→h2 BarBlur准备链与位图归属，其他操作线程/等待和完整调用方；然后完整L01～L12+回引、配置/组合/API总门禁。尚不需要连接设备。

未来停车最小检查：重复打开关闭只读面板、观察仪表/SOC/磁贴显示，正常结果应恢复显示、超时不提交晚到状态，收集QuickSettingsMgr及crash日志；中断本身可能需受控Android测试环境，不能在实车用车辆控制触发。失败先回原车桌面保留日志，核对签名/版本/配置后恢复已验证V2；R11只作为本地父检查点。未实车包不进正式交付目录，卸载须用户明确确认。
